--[[
    Script Name    : SpawnScripts/TroubledHaunt/anEnragedspirit.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.23 12:11:51
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
	waypoints(NPC)
end



function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -6.76, 0.67, -6.09, 2, 6)
	MovementLoopAddLocation(NPC, -7.17, 0.67, -6.71, 2, 0)
	MovementLoopAddLocation(NPC, -7.56, 0.67, -6.45, 2, 0)
	MovementLoopAddLocation(NPC, -6.88, 0.67, -5.62, 2, 0)
	MovementLoopAddLocation(NPC, -6.2, 0.67, -5.71, 2, 0)
	MovementLoopAddLocation(NPC, -1.07, 0.67, -6.83, 2, 6)
	MovementLoopAddLocation(NPC, -0.4, 0.67, -6.93, 2, 0)
	MovementLoopAddLocation(NPC, -0.88, 0.67, -7.42, 2, 0)
	MovementLoopAddLocation(NPC, -2.08, 0.67, -7.29, 2, 0)
end

function death(NPC,Spawn)
		PlayFlavor(NPC, "voiceover/english/ghost_halfling_base_1/ft/ghost/ghost_halfling_base_1_1_death_gm_e09a504d.mp3", "Might there be a release from this ... existence?", "", 2158192373, 320090825, Spawn, 0)
end

function aggro(NPC,Spawn)
		PlayFlavor(NPC, "voiceover/english/ghost_halfling_base_1/ft/ghost/ghost_halfling_base_1_1_aggro_gm_a507a247.mp3", "You'll pay for disturbing me!", "", 4260790933, 1525385880, Spawn, 0)
end