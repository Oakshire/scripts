--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425796.lua
	Script Purpose	:	Waypoint Path for atriggerfish425796.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:28:19 
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
	MovementLoopAddLocation(NPC, 19.11, -11.9, -23.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.56, -11.42, -28.4, 2, 0)
	MovementLoopAddLocation(NPC, 15.69, -11.33, -32.48, 2, 0)
	MovementLoopAddLocation(NPC, 10.71, -11.75, -39.71, 2, 0)
	MovementLoopAddLocation(NPC, 8.19, -12.02, -47.24, 2, 0)
	MovementLoopAddLocation(NPC, 6.73, -12.26, -51.04, 2, 0)
	MovementLoopAddLocation(NPC, 3.81, -13, -56.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.71, -12.43, -59.87, 2, 0)
	MovementLoopAddLocation(NPC, 14.97, -10.63, -63.5, 2, 0)
	MovementLoopAddLocation(NPC, 16.99, -10.63, -64.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.9, -11.15, -57.21, 2, 0)
	MovementLoopAddLocation(NPC, 31.71, -11.57, -39.92, 2, 0)
	MovementLoopAddLocation(NPC, 37.06, -12.95, -26.98, 2, 0)
	MovementLoopAddLocation(NPC, 39.05, -13.45, -23.05, 2, 0)
	MovementLoopAddLocation(NPC, 40.44, -13.85, -19.62, 2, 0)
	MovementLoopAddLocation(NPC, 43.6, -13.94, -14.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.68, -12.54, -12.56, 2, 0)
	MovementLoopAddLocation(NPC, 16.07, -12.26, -12.81, 2, 4)
	MovementLoopAddLocation(NPC, 20.66, -13.33, -17.74, 2, 0)
	MovementLoopAddLocation(NPC, 22.03, -12.04, -28.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.17, -11.46, -31.22, 2, 0)
	MovementLoopAddLocation(NPC, 7.65, -11.4, -31.36, 2, 0)
	MovementLoopAddLocation(NPC, -0.15, -11.78, -31.92, 2, math.random(10, 20))
end


