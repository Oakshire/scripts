--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425830.lua
	Script Purpose	:	Waypoint Path for atriggerfish425830.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:22:03 
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
	MovementLoopAddLocation(NPC, -7.84, -14.02, 27.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.86, -13.96, 31.53, 2, 0)
	MovementLoopAddLocation(NPC, -6.22, -13.94, 38.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.37, -13.84, 32.13, 2, 0)
	MovementLoopAddLocation(NPC, 12.6, -13.94, 28.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.06, -13.02, 47.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.86, -12.51, 42.19, 2, 0)
	MovementLoopAddLocation(NPC, 9.68, -12.51, 34.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.54, -13.3, 32.68, 2, 0)
	MovementLoopAddLocation(NPC, 0.01, -13.49, 31.08, 2, 0)
	MovementLoopAddLocation(NPC, -0.76, -13.52, 29.89, 2, 0)
	MovementLoopAddLocation(NPC, -0.34, -13.43, 26.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.31, -12.63, 29.06, 2, 0)
	MovementLoopAddLocation(NPC, 17.9, -12.51, 29.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.89, -13.66, 30.41, 2, 0)
	MovementLoopAddLocation(NPC, -1.27, -13.87, 29.52, 2, 0)
end


