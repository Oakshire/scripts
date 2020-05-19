--[[
	Script Name	: SpawnScripts/GreaterFaydark/aShroombacultivator1.lua 
	Script Purpose	: Shroomba Cultivator wanderer
	Script Author	: John Adams
	Script Date	: 2009.03.29
	Script Notes	: There are a few of these, different wander paths.
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -82.36, -31.72, -300.98, 3, 0)
	MovementLoopAddLocation(NPC, -61.74, -32.41, -286.65, 3, 0)
	MovementLoopAddLocation(NPC, -55.17, -32.44, -285.26, 3, 0)
	MovementLoopAddLocation(NPC, -42.96, -32.35, -285.70, 3, 0)
	MovementLoopAddLocation(NPC, -57.95, -32.44, -284.10, 3, 0)
	MovementLoopAddLocation(NPC, -62.57, -32.42, -288.96, 3, 0)
	MovementLoopAddLocation(NPC, -74.56, -31.57, -292.37, 3, 0)
	MovementLoopAddLocation(NPC, -79.73, -31.08, -299.55, 3, 0)
	MovementLoopAddLocation(NPC, -82.31, -31.99, -302.37, 3, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end
