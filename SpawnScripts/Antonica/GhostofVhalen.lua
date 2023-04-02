--[[
    Script Name    : SpawnScripts/Antonica/GhostofVhalen.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.01 06:04:22
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "I stand vigilant to ring the bells in warning for the city of Qeynos.", "", 1689589577, 4560189, Spawn)
end

function aggro(NPC, Spawn) 
local random = MakeRandomInt(1, 3)
if random == 1 then
PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_aggro_gm_3e2a680d.mp3", "You cannot run from death, mortal!", "", 3726501132, 2641272181, Spawn)
elseif random == 2 then
PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_aggro_gm_11cb6bf8.mp3", "Mortal agony is nothing compared to the torment that awaits you!", "", 2544751499, 3488336081, Spawn)
else
PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_aggro_gm_8a0dd99d.mp3", "I will show you the true pain of death!", "", 2563182730, 2699265972, Spawn)
end 
end

function death(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_death_gm_18bd9c56.mp3", "You will see us again in your nightmares!", "", 3496984483, 236189449
, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end