--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425778.lua
	Script Purpose	:	Waypoint Path for atriggerfish425778.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:13:07 
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
	MovementLoopAddLocation(NPC, 32.63, -11.98, -80.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.16, -11.97, -68.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.66, -12, -83.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.7, -11.96, -84.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.39, -11.17, -57.11, 2, 0)
	MovementLoopAddLocation(NPC, 56.49, -11.01, -52.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.93, -11.48, -56.78, 2, 0)
	MovementLoopAddLocation(NPC, 65.99, -11.98, -78.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.98, -12, -80.14, 2, 0)
	MovementLoopAddLocation(NPC, 31.41, -11.93, -81.16, 2, 0)
	MovementLoopAddLocation(NPC, 27.89, -11.95, -82.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.13, -12.18, -81.1, 2, 0)
	MovementLoopAddLocation(NPC, 58.86, -11.94, -74.3, 2, math.random(10, 20))
end


