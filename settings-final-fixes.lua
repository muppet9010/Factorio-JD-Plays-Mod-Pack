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
    data.raw["bool-setting"]["biter_revive-include_biological_turrets"].default_value = true
end

-- Stasis Mine
data.raw["bool-setting"]["stasis_mine-disable_stasis_grenade"].default_value = true
data.raw["bool-setting"]["stasis_mine-disable_stasis_mine"].default_value = true
data.raw["bool-setting"]["stasis_mine-disable_stasis_rocket"].default_value = true

-- Inbuilt Lighting
data.raw["int-setting"]["power-pole-powered-area-lighted-percent"].default_value = 200
data.raw["double-setting"]["inbuilt_lighting-light_brightness"].default_value = 1
data.raw["int-setting"]["light-power-usage-watts"].default_value = 50

-- Spawn Tweaks
data.raw["int-setting"]["SpawnTweaks-ammo_starting_amount"].default_value = 50
data.raw["int-setting"]["SpawnTweaks-capsule_starting_amount"].default_value = 10

-- Muppet Streamer
data.raw["bool-setting"]["muppet_streamer-enable_building_ghosts"].default_value = true
data.raw["bool-setting"]["muppet_streamer-units_can_open_gates"].default_value = true

-- Biter Reincarnation
if mods["biter_reincarnation"] ~= nil then
    data.raw["int-setting"]["biter_reincarnation-worm_turn_to_rock_chance_percent"].default_value = 20
    data.raw["int-setting"]["biter_reincarnation-worm_turn_to_cliff_chance_percent"].default_value = 10
    data.raw["int-setting"]["biter_reincarnation-worm_turn_to_water_chance_percent"].default_value = 70
end

-- Zombie Engineer
data.raw["double-setting"]["zombie_engineer-gravestone_quantity"].default_value = 0
--[[ cspell: disable-next-line ]]
data.raw["string-setting"]["zombie_engineer-zombie_names"].default_value = "sassysarrah, swfan85, j0hanandersson, sweetfatherkleutus, asteamedpanda, tank9786, lordmicron, bethorien, mukkie, phatm0n, rpgdinosaurbob, jatmn, fdethan, tommy_ketchup, hawkeye045, ysumi_ginwa, orionsirius26, kaifer_c, fallenangel081979, torgric, operator000, k1ll3r1393, pjtr74, frostfireone, crankypantz, monsieur_point, lotteryplayer, sightseermo, spinzone9, phagabeefe, tizigirl, oxdaffy123, the_rubble, glasseyemarduke, 1silentmonk, fireiceking113, wesleycoder, callofduty_monster, squishychew, mikeclayt, futuremeproblem, eagleandy, mike_the_giant, naval_warlord, silentwolf465, hocusdook, asureastorm, zellep_fan, simmode, caias, hydro2312, susturtle, d0mm4s, grimmbean79, failcamper, jitterbug9, yea_the_boiz, ohthathappened, saint_aurikon, lii0nz, boomhower__, p_zangusu, hotexpage, facele5s_90, guggitz2, eisenh0rn40, mv_hank, pi_joe_mama, spumenco, sfrogger, caledorn, kissfc, cazineer, borodimer, anvica, t0bbej, azraelgodking, ansem_of_nexus, skip12030, marckymarck469, trupen, jacob2348, ekh13n, paul_2812, namcke, bert_1997_, alipios777, nads__, mrfoxx87, jeccab, eraserchip, m1j1m, balinhoru, firefly24, enire, bennyb1971, spennydurp, frankie_dk, tatsu_s12, danjvd, resodk, bluedragon0980, sshortest, datagnome, mysticems, rymunin, jacygamer, kenshin198, geriatricviewer, billbo999, sorahn, carkhy, havic_gaming, shepherd_93, michelguenette, usernothome, akira2323232, thanxchat, xxbagginsxx, parazitutm, yidotv, esmokadeetin, metho0s, mirage357, b_man_can, eristtof, kemanmaldea, shamsters, mrdayne, mrchowmang, bal1n0r, binkeh77, whiticker, iridium83, kimbagg, hokinrazi, bossjones1981, akiradk, hounddog278, iamthierry, tirandus, apolloqj, ergophobia, uxikoll, wandyrer77, wrexxy, the_j_myster, hilllbillll, khrest, rockman_64_, thelordsmith, supertux88, kerberos233, acudoc, blahfasel2000, norwaynorsk, master_dose, thepelletguy, rhallonen, raidrunnergaming, spiritmorin, fatboynotsoslim_, productionexpert, smokin52, matisjaximus, west_leigh, tahcabear, thewholeunique, quasarkaese, jmatya, riker1968, sgt_vegeta, crue1979, bsgboomer, thunder0010, nopeiamnothere, sakutera, roboulte_guillimabaruuk, factoriommo, maxnlit, generaltank3, thepawn01, shmuel0703, jdplays, lysmata, lolgamerz89, satellite999, aingolmo, nightbot, idealsphinx, tinnerz58, mivise_27, punkinpai, dannyboy9001, pro_unreal, zombieland49429, sleepless9ight, oddcrazystuff, snoso, huffsam, jtcranmer, ricjun12, khullane, tazzydevil86, txmaverick88, skynett81, arraeruyt, schimwyr, billlthegreat, dzierzan_, bigzzee1, raiden697, aeternussamurai, percy_penguin, sm0r6, deadsoul2002, venidtg, galastel, stinson_5, wafflecrews, jhood89, narthenian, salmunnister, smilensilly, ozy_viking, kurtis0006, bluebeardarr, darfvada69, the_daveman, harradh, foxhound590, althdor, phantomwere, disco_89, mojod, beenloaded_, store_something, fetch04, schlaeferd, marcel2_9, wielki_szu84, davevdberg, psimmon, theredeyedsniper, oldsd, newp9772, soramurasaki, shizuka_akumu, thewesdude, andyoutside, akin_stir, timick1991, apespec, lucasmm920, crunchtech88, swiftieggg, nortonius, eb0b42, ben967f, tknee01, robotigx, shloopfsy, jrock316, muppet9010, skippy314, rolymole09, mithgar, equitime77"


--data.raw["ZZZZZZ-setting"]["YYYYYY-XXXXXX"].default_value = AAAAAA
