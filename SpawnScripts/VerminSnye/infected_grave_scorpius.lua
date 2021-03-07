--[[
	Script Name		:	infected_grave_scorpius.lua
	Script Purpose	:	Waypoint Path for infected_grave_scorpius.lua
	Script Author	:	Devn00b
	Script Date		:	06/24/2020 03:02:07 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 125.09, 0.07, -163.36, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 122.46, 0.09, -168.05, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 113.93, 0, -165.98, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 116.2, 0.01, -170.58, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 107.88, 0.06, -170.71, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 109.06, 0.06, -175.7, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 114.61, 0.01, -165.85, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 128.02, 0.01, -166.44, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 133.16, 0.03, -160.31, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 128.75, 0.05, -160.07, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 132.75, 0.08, -153.61, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 128.96, 0.03, -153.38, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 132.75, 0.08, -153.61, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 128.75, 0.05, -160.07, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 133.16, 0.03, -160.31, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 128.02, 0.01, -166.44, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 114.61, 0.01, -165.85, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 109.06, 0.06, -175.7, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 107.88, 0.06, -170.71, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 116.2, 0.01, -170.58, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 113.93, 0, -165.98, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 122.46, 0.09, -168.05, 2, math.random(0,15))
	MovementLoopAddLocation(NPC, 125.09, 0.07, -163.36, 2, math.random(0,15))
end


