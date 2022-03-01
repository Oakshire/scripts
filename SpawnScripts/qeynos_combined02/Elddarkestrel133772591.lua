--[[
    Script Name     :   SpawnScripts/qeynos_combined02/Elddarkestrel133772591.lua
	Script Purpose	:	Waypoint Path for Elddarkestrel133772591.lua
	Script Author	:	Rylec
	Script Date		:	09-18-2021 11:38:17 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 638.44, -16, -249.2, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 634.24, -15.28, -249.19, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 630.99, -14.46, -246.57, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 628.02, -15.31, -250.3, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 624.76, -15.72, -248.43, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 628.2, -16.66, -242.74, 2, 0)
	MovementLoopAddLocation(NPC, 629.38, -16.96, -237.99, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 634.71, -14.75, -244.12, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 630.97, -15.16, -241.78, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 631.88, -14.86, -249.64, 2, 0)
	MovementLoopAddLocation(NPC, 634.86, -14.66, -255.36, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 622.79, -15.44, -241.06, 2, math.random(10, 17))
	MovementLoopAddLocation(NPC, 630.94, -14.6, -248.06, 2, math.random(10, 17))
end