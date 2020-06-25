--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425808.lua
 	Script Purpose	:	Waypoint Path for atriggerfish425808.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:40:40 
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
	MovementLoopAddLocation(NPC, 37.65, -11.97, -9.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.68, -12.35, -14.44, 2, 0)
	MovementLoopAddLocation(NPC, 48.27, -12.17, -18.35, 2, 0)
	MovementLoopAddLocation(NPC, 51.73, -12.06, -21.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.68, -12.89, -16.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.11, -13.36, -24.1, 2, 0)
	MovementLoopAddLocation(NPC, 22.44, -13.13, -26.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.34, -13.77, -24.31, 2, 0)
	MovementLoopAddLocation(NPC, 34.06, -14.18, -19.85, 2, 0)
	MovementLoopAddLocation(NPC, 37.76, -14.32, -17.85, 2, 0)
	MovementLoopAddLocation(NPC, 44.46, -13.5, -13.04, 2, 0)
	MovementLoopAddLocation(NPC, 48.02, -13.56, -11.92, 2, 0)
	MovementLoopAddLocation(NPC, 53.54, -14.06, -10.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.48, -13.94, -9.95, 2, 0)
	MovementLoopAddLocation(NPC, 34.97, -14.07, -8.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.64, -14.29, -9.67, 2, 0)
	MovementLoopAddLocation(NPC, 50.26, -13.87, -10.45, 2, math.random(10, 20))
end


