--[[
	Script Name	: SpawnScripts/GreaterFaydark/aShroombacultivator5.lua 
	Script Purpose	: Shroomba Cultivator wanderer
	Script Author	: John Adams
	Script Date	: 2009.03.29
	Script Notes	: There are a few of these, different wander paths.
--]]

function spawn(NPC)
	MovementLoopAddLocation(NPC, -41.56, -37.86, -377.56, 3, 0)
	MovementLoopAddLocation(NPC, -27.47, -38.07, -367.70, 3, 0)
	MovementLoopAddLocation(NPC, -23.42, -37.96, -367.50, 3, 0)
	MovementLoopAddLocation(NPC, -14.07, -38.32, -360.40, 3, 0)
	MovementLoopAddLocation(NPC, -16.16, -38.28, -360.46, 3, 0)
	MovementLoopAddLocation(NPC, -10.24, -38.31, -352.91, 3, 0)
	MovementLoopAddLocation(NPC, -7.47, -38.33, -350.15, 3, 0)
	MovementLoopAddLocation(NPC, -6.03, -38.37, -345.24, 3, 0)
	MovementLoopAddLocation(NPC, -2.93, -38.33, -341.59, 3, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end
