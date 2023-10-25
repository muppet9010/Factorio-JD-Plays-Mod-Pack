-- Camp Fires - I think we can do these with Muppet Streamer now. If we create them instantly we can then add fuel via streamer calling code. And we can use delayed Lua to schedule removing them. However, hard coded due to time constraints for now.
-- Utility was added just for this, so if this can be removed then Utility can go as well. Older version used as lifted from JD-Plays mod to ensure compatibility.

local Events = require("utility.events")
local EventScheduler = require("utility.event-scheduler")

--[[
    Modify the camp-fire entity if its present from the fire-place mod.
    We want to give it fuel on creaton and then remove it after a set period once its been created.
]]
local campFireTTLTicksMin, campFireTTLRandomMax = 1800, 1800

---@class RemoveCampFire_Scheduled_EventData
---@field entity LuaEntity

--- Called when a camp fire is created so we can auto fuel it and register it for automatic future removal.
---@param event EventData.on_built_entity|EventData.script_raised_built|EventData.script_raised_revive|EventData.on_robot_built_entity
local CampFireBuilt = function(event)
    local entity = event.entity or event.created_entity
    entity.insert({ name = "nuclear-fuel", count = 2 }) -- Will run for a long time.
    entity.operable = false

    local removeTick = (event.tick + campFireTTLTicksMin + math.random(0, campFireTTLRandomMax)) --[[@as Tick]] ---@type Tick
    EventScheduler.ScheduleEventOnce(removeTick, "RemoveCampFire_Scheduled", entity.unit_number --[[@as StringOrNumber]], { entity = entity })
end

--- Called to remove a specific camp fire.
---@param event UtilityScheduledEvent_CallbackObject
local RemoveCampFire_Scheduled = function(event)
    local data = event.data ---@type RemoveCampFire_Scheduled_EventData
    if data.entity.valid then
        data.entity.destroy({ raise_destroy = true })
    end
end




local function CreateGlobals()
end

local function OnLoad()
    local builtFilter = {
        { filter = "name", name = "camp-fire" },
    }
    Events.RegisterHandlerEvent(defines.events.on_built_entity, "CampFireBuilt", CampFireBuilt, builtFilter)
    Events.RegisterHandlerEvent(defines.events.script_raised_built, "CampFireBuilt", CampFireBuilt, builtFilter)
    Events.RegisterHandlerEvent(defines.events.script_raised_revive, "CampFireBuilt", CampFireBuilt, builtFilter)
    Events.RegisterHandlerEvent(defines.events.on_robot_built_entity, "CampFireBuilt", CampFireBuilt, builtFilter)

    EventScheduler.RegisterScheduler()
    EventScheduler.RegisterScheduledEventType("RemoveCampFire_Scheduled", RemoveCampFire_Scheduled)
end

local function OnStartup()
    CreateGlobals()
    OnLoad()
end

script.on_init(OnStartup)
script.on_configuration_changed(OnStartup)
script.on_load(OnLoad)
