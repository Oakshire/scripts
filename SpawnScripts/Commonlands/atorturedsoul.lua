--[[
    Script Name    : SpawnScripts/Commonlands/atorturedsoul.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.04 07:06:49
    Script Purpose : 
                   : 
--]]

require("SpawnScripts/Generic/MovementCircleSmall")

function spawn(NPC)
SpawnChooseRandomMovement(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
    local choice = MakeRandomInt(1, 2)
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_death_gm_18bd9c56.mp3", "You will see us again in your nightmares!", "", 3496984483, 236189449)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_death_gm_49b06ac1.mp3", "You cannot kill what is already dead!", "", 2840452858, 3381399753)
end
   end

function aggro(NPC, Spawn)
	local choice = MakeRandomInt(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_aggro_gm_3e2a680d.mp3", "You cannot run from death, mortal!", "", 3726501132, 2641272181)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_aggro_gm_8a0dd99d.mp3", "I will show you the true pain of death!", "", 2563182730, 2699265972)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_aggro_gm_11cb6bf8.mp3", "Mortal agony is nothing compared to the torment that awaits you!", "", 2544751499, 3488336081)
	end
end
