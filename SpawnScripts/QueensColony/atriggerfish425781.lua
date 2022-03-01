--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425781.lua
	Script Purpose	:	Waypoint Path for atriggerfish425781.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:14:07 
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
	MovementLoopAddLocation(NPC, 90.28, -11.98, -25.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 93.5, -12.78, -21.67, 2, 0)
	MovementLoopAddLocation(NPC, 94.54, -12.97, -19.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.48, -12.15, -25.77, 2, 0)
	MovementLoopAddLocation(NPC, 73.93, -10.44, -37.73, 2, 0)
	MovementLoopAddLocation(NPC, 56.42, -11.02, -54.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.02, -11.21, -60.36, 2, 0)
	MovementLoopAddLocation(NPC, 54.8, -11.26, -64.06, 2, 0)
	MovementLoopAddLocation(NPC, 52.16, -11.45, -68.74, 2, 0)
	MovementLoopAddLocation(NPC, 51.95, -10.35, -80.43, 2, 0)
	MovementLoopAddLocation(NPC, 51.71, -10.17, -82.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.79, -10.5, -78.35, 2, 0)
	MovementLoopAddLocation(NPC, 71.34, -11.36, -51.16, 2, 0)
	MovementLoopAddLocation(NPC, 80.01, -12.33, -40.3, 2, 0)
	MovementLoopAddLocation(NPC, 83.09, -12.5, -35.25, 2, 0)
	MovementLoopAddLocation(NPC, 85.45, -12.9, -29.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 91.24, -13.05, -24.53, 2, 0)
	MovementLoopAddLocation(NPC, 96.43, -13.04, -18.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.2, -12.07, -19.36, 2, 0)
	MovementLoopAddLocation(NPC, 84.14, -12.36, -15.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.74, -12.12, -23.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.05, -13.03, -27.45, 2, 0)
	MovementLoopAddLocation(NPC, 95.22, -12.9, -30.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 93.94, -12.05, -26.67, 2, 0)
	MovementLoopAddLocation(NPC, 92.36, -11.93, -21.45, 2, math.random(10, 20))
end


