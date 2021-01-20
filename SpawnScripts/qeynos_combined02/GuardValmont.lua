--[[
    Script Name    : SpawnScripts/qeynos_combined02/GuardValmont.lua
    Script Author  : Rylec
    Script Date    : 2021.01.19 04:01:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 3000, "Animations")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())

    local choice = math.random (1,4)

    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_ed0d92f8.mp3", "I hate the night shift!  If the gnolls don't attack now, I may die of boredom.", "grumble", 1226814424, 706962620, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_ebfceda5.mp3", "Greetings, citizen. I am on guard duty.  Should you get into trouble, seek me out.", "attention", 3448203562, 506341016, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 1886617373, 1115286759, Spawn)
    else
        PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_c865a827.mp3", "Duty above all else, citizen, except honor!", "scold", 373851625, 467562033, Spawn)
    end
end

function respawn(NPC)
    spawn(NPC)
end

function Animations(NPC)
    math.randomseed(os.time())
    local choice = math.random (1,2)

    if choice == 1 then
        PlayAnimation(NPC, 891)
    else
        PlayAnimation(NPC, 13008)
    end

    local time = math.random (25000,40000)         
    AddTimer(NPC, time, "Animations")
end
