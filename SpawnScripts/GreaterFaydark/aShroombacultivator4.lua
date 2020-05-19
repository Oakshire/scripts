--[[
	Script Name	: SpawnScripts/GreaterFaydark/aShroombacultivator4.lua 
	Script Purpose	: Shroomba Cultivator wanderer
	Script Author	: John Adams
	Script Date	: 2009.03.29
	Script Notes	: There are a few of these, different wander paths.
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -1.12, -38.15, -337.43, 3, 0)
	MovementLoopAddLocation(NPC, -2.92, -38.36, -343.18, 3, 0)
	MovementLoopAddLocation(NPC, -6.57, -38.35, -346.78, 3, 0)
	MovementLoopAddLocation(NPC, -9.25, -38.31, -352.26, 3, 0)
	MovementLoopAddLocation(NPC, -7.18, -38.33, -352.04, 3, 0)
	MovementLoopAddLocation(NPC, -14.03, -38.33, -359.53, 3, 0)
	MovementLoopAddLocation(NPC, -12.99, -38.33, -359.51, 3, 0)
	MovementLoopAddLocation(NPC, -19.66, -38.13, -363.79, 3, 0)
	MovementLoopAddLocation(NPC, -28.06, -38.08, -369.64, 3, 0)
	MovementLoopAddLocation(NPC, -37.48, -37.98, -375.70, 3, 0)
	MovementLoopAddLocation(NPC, -40.94, -37.90, -378.42, 3, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end
