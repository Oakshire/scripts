--[[
    Script Name    : SpawnScripts/qeynos_combined02/GuardStonefist.lua
    Script Author  : Rylec
    Script Date    : 2021.10.04 07:10:19
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 3000, "EmoteLoop")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local choice = MakeRandomInt(1,4)

    if choice == 1 then     
        PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gm_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 2539353309, 3288832983, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gm_76da37c9.mp3", "I hate working this shift!  If the gnolls don't attack now, I may die of boredom.", "grumble", 31199107, 4082603014, Spawn)  
    elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gm_ebfceda5.mp3", "Greetings, citizen. I am on guard duty.  Should you get into trouble, seek me out.", "attention", 1717559969, 1730005307, Spawn)  
    else
        PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gm_c865a827.mp3", "Duty above all else, citizen, except honor!", "scold", 3958491070, 1651361777, Spawn) 
    end
end

function respawn(NPC)
	spawn(NPC)
end

function EmoteLoop(NPC)
        local choice = MakeRandomInt(1,2)

        if choice == 1 then
                PlayAnimation(NPC, 891)
        else
                PlayAnimation(NPC, 13008)
        end

        local time = MakeRandomInt(30000,40000)         
        AddTimer(NPC, time, "EmoteLoop")
end