--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425779.lua
	Script Purpose	:	Waypoint Path for atriggerfish425779.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:13:30 
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
	MovementLoopAddLocation(NPC, 92.33, -11.96, -37.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.59, -11.95, -43.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 93.17, -12.98, -22.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.21, -12.9, -29.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.2, -12.57, -32.46, 2, 0)
	MovementLoopAddLocation(NPC, 77.85, -10.98, -36.38, 2, 0)
	MovementLoopAddLocation(NPC, 74.53, -10.48, -37.85, 2, 0)
	MovementLoopAddLocation(NPC, 70.56, -10.1, -39.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.49, -10.3, -40.08, 2, 0)
	MovementLoopAddLocation(NPC, 78.68, -10.38, -39.25, 2, 0)
	MovementLoopAddLocation(NPC, 89.27, -12.3, -37.21, 2, 0)
	MovementLoopAddLocation(NPC, 94.78, -12.94, -35.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.96, -12.76, -39.66, 2, 0)
	MovementLoopAddLocation(NPC, 94.58, -11.67, -42.22, 2, 0)
	MovementLoopAddLocation(NPC, 92.8, -11.41, -44.22, 2, math.random(10, 20))
end


