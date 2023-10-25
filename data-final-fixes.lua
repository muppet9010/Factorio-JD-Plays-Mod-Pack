--[[
    Modify the camp-fire entity if it's present from the fire-place mod.
    We want to hide it from being crafted and make it un-minable.
]]

local campFireRecipe = data.raw["recipe"]["camp-fire"]
if campFireRecipe ~= nil then
    campFireRecipe.enabled = false
end

local campFireEntity = data.raw["furnace"]["camp-fire"]
if campFireEntity ~= nil then
    campFireEntity.minable = nil
end
