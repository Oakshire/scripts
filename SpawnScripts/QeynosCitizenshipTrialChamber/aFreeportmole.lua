--[[
    Script Name    : SpawnScripts/QeynosCitizenshipTrialChamber/aFreeportmole.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.31 03:08:06
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function aggro(NPC,Spawn)
if GetGender(NPC)== 2 then 
    choice = MakeRandomInt(1,2)
    if choice ==1 then
    PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_e88fad9f.mp3", "Whoa!!!  I don't remember saying I wanted to talk to you!", "", 3869016622, 3073089976, Spawn)
    else
	PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gf_29efa844.mp3", "I didn't see or hear anything!  I swear!", "", 485112397, 1983474419, Spawn)
    end
else
    choice = MakeRandomInt(1,2)
    if choice ==1 then
   	PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/halfelf/halfelf_eco_evil_1_hail_gm_7344f21b.mp3", "I'm in the mood to kick someone in the teeth.", "kick", 620861878, 995351111, Spawn, 0)
    else
   	PlayFlavor(NPC, "voiceover/english/optional5/halfelf_base_2/ft/halfelf/halfelf_base_2_1_aggro_gm_616f0d11.mp3", "Here they come!", "", 3991490504, 964947720, Spawn, 0)
    end
end
end

function death(NPC,Spawn)
    SetStepComplete(Spawn,5718,4)
 if GetGender(NPC)== 2 then 
   PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gf_610c650e.mp3", "You must flee!  I'll try to hold them.", "", 1612338229, 10301262, Spawn, 0)
    else
	PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gm_610c650e.mp3", "You must flee!  I'll try to hold them.", "", 3580386891, 3023137994, Spawn, 0)
end 
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -5.55, -0.39, -9.49, 2, 8)
	MovementLoopAddLocation(NPC, -5.62, -0.39, 0.64, 2, 6)
	MovementLoopAddLocation(NPC, -2.9, -0.39, 0.77, 2, 8)
	MovementLoopAddLocation(NPC, -5.26, -0.39, -7.92, 2, 8)
	MovementLoopAddLocation(NPC, -2.84, -0.39, 2.12, 2, 6)
	MovementLoopAddLocation(NPC, -4.8, -0.39, 4.41, 2, 5)
end


