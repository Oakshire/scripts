--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425744.lua
	Script Purpose	:	Waypoint Path for atriggerfish425744.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 06:00:07 
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
	MovementLoopAddLocation(NPC, -101.81, -14.97, 235.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -102.46, -13.45, 228.73, 2, 0)
	MovementLoopAddLocation(NPC, -104.48, -13.65, 225.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -124.71, -13.62, 216.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.03, -14.09, 224.03, 2, 0)
	MovementLoopAddLocation(NPC, -142.23, -13.71, 227.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.15, -13.68, 237.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.21, -13.72, 218.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.28, -14.94, 218.88, 2, 0)
	MovementLoopAddLocation(NPC, -95.89, -14.94, 218.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -108.01, -13.62, 214.98, 2, 0)
	MovementLoopAddLocation(NPC, -111.65, -13.64, 214.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.15, -14.88, 225.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.97, -13.35, 221.38, 2, 0)
	MovementLoopAddLocation(NPC, -118.5, -13.43, 220.51, 2, 0)
	MovementLoopAddLocation(NPC, -125.66, -14.9, 213.63, 2, 0)
	MovementLoopAddLocation(NPC, -127.39, -15.01, 212.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.67, -13.58, 239.29, 2, 0)
	MovementLoopAddLocation(NPC, -111.83, -13.56, 241.97, 2, math.random(10, 20))
end


