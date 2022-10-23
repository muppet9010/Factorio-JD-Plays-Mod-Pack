-- We do all settings in final stage to make sure we can overwrite other mods settings.

-- Biter Hunt Group
data.raw["string-setting"]["biter_hunt_group-group_frequency_range_low_minutes"].default_value = 1
data.raw["string-setting"]["biter_hunt_group-group_frequency_range_high_minutes"].default_value = 5
data.raw["string-setting"]["biter_hunt_group-group_size"].default_value = 0
data.raw["string-setting"]["biter_hunt_group-group_spawn_radius_from_target"].default_value = 30
data.raw["string-setting"]["biter_hunt_group-group_tunnelling_time_seconds"].default_value = 5
data.raw["string-setting"]["biter_hunt_group-group_warning_text"].default_value = "JD's followers are coming"
data.raw["string-setting"]["biter_hunt_group-group_hunting_text"].default_value = "friends looking for __1__"
data.raw["string-setting"]["biter_hunt_group-group_players_name_targets"].default_value = "[\"JD-Plays\"]"
data.raw["string-setting"]["biter_hunt_group-biter_quantity_formula"].default_value = "math.floor( (biterCount + (biterCount * (biterCount/4) ) ) * 10 )"

-- Biter Revive
if mods["biter_revive"] ~= nil then
    data.raw["string-setting"]["biter_revive-delay_text"].default_value = "zzz, snore, having a rest, BRB, please wait rebooting, I'll be back, PEBKAC, please hold repathing, it's just a flesh wound, biding time, recalculating, mistakes were made, it's fine"
end

-- Stasis Mine
data.raw["bool-setting"]["stasis_mine-disable_stasis_grenade"].default_value = true
data.raw["bool-setting"]["stasis_mine-disable_stasis_mine"].default_value = true
data.raw["bool-setting"]["stasis_mine-disable_stasis_rocket"].default_value = true

-- Inbuilt Lighting
data.raw["int-setting"]["power-pole-wire-reach-lighted-percent"].default_value = 200
data.raw["double-setting"]["inbuilt_lighting-light_brightness"].default_value = 1

-- Spawn Tweaks
data.raw["int-setting"]["SpawnTweaks-ammo_starting_amount"].default_value = 50
data.raw["int-setting"]["SpawnTweaks-capsule_starting_amount"].default_value = 10



--data.raw["ZZZZZZ-setting"]["YYYYYY-XXXXXX"].default_value = AAAAAA
