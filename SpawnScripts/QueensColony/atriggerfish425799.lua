--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425799.lua
	Script Purpose	:	Waypoint Path for atriggerfish425799.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:31:52 
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
	MovementLoopAddLocation(NPC, 43.76, -11.96, -15.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.39, -13.89, -22.02, 2, 0)
	MovementLoopAddLocation(NPC, 38.51, -13.78, -26.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.84, -13.01, -9.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.65, -12.94, -12.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.37, -12.98, -1.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.94, -14.7, -5.12, 2, 0)
	MovementLoopAddLocation(NPC, 27.95, -15.42, -17.02, 2, 0)
	MovementLoopAddLocation(NPC, 25.2, -15.35, -23.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.39, -13.99, -26.21, 2, 0)
	MovementLoopAddLocation(NPC, 17.98, -13.31, -31.08, 2, 0)
	MovementLoopAddLocation(NPC, 12.96, -12.97, -34.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.57, -12.55, -39.92, 2, 0)
	MovementLoopAddLocation(NPC, 16.73, -12.57, -42.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.09, -12.19, -47.03, 2, 0)
	MovementLoopAddLocation(NPC, 22.27, -11.96, -51.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.65, -11.42, -45.98, 2, 0)
	MovementLoopAddLocation(NPC, 26.03, -11.48, -39.89, 2, 0)
	MovementLoopAddLocation(NPC, 32.24, -14.29, -17.53, 2, 0)
	MovementLoopAddLocation(NPC, 34.43, -14.76, -14.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.24, -13.05, -14.89, 2, 0)
end


