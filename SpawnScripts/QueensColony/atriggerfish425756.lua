--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425756.lua
	Script Purpose	:	Waypoint Path for atriggerfish425756.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:59:30 
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
	MovementLoopAddLocation(NPC, -116.1, -11.94, 51.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -113.17, -11.83, 59.52, 2, 0)
	MovementLoopAddLocation(NPC, -113.18, -11.6, 66.38, 2, 0)
	MovementLoopAddLocation(NPC, -109.02, -11.95, 71.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -113.86, -11.84, 68.07, 2, 0)
	MovementLoopAddLocation(NPC, -120.85, -10.48, 63.11, 2, 0)
	MovementLoopAddLocation(NPC, -128.45, -10.61, 57.07, 2, 0)
	MovementLoopAddLocation(NPC, -133.6, -12.61, 52.74, 2, 0)
	MovementLoopAddLocation(NPC, -142.53, -13.51, 49.18, 2, 0)
	MovementLoopAddLocation(NPC, -142.38, -13.89, 55.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.54, -13.63, 48.41, 2, 0)
	MovementLoopAddLocation(NPC, -138.22, -13.18, 47.86, 2, 0)
	MovementLoopAddLocation(NPC, -137.74, -11.92, 36.11, 2, 0)
	MovementLoopAddLocation(NPC, -133.11, -11.53, 28.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.17, -11.78, 70.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.96, -12.03, 54.72, 2, 0)
	MovementLoopAddLocation(NPC, -131.51, -11.78, 61.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.43, -11.36, 55.48, 2, 0)
	MovementLoopAddLocation(NPC, -126.69, -10.47, 52.74, 2, 0)
	MovementLoopAddLocation(NPC, -112.08, -10.51, 52.14, 2, 0)
	MovementLoopAddLocation(NPC, -105.12, -10.58, 49.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.44, -11.6, 46.22, 2, 0)
	MovementLoopAddLocation(NPC, -123.63, -11.9, 43.2, 2, 0)
	MovementLoopAddLocation(NPC, -127.38, -11.95, 41.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.35, -12.01, 39.85, 2, math.random(10, 20))
end

