--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425750.lua
	Script Purpose	:	Waypoint Path for atriggerfish425750.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:15:54 
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
	MovementLoopAddLocation(NPC, -90.7, -11.95, 138.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -95.83, -12.12, 129.61, 2, 0)
	MovementLoopAddLocation(NPC, -97.84, -11.96, 127.52, 2, 0)
	MovementLoopAddLocation(NPC, -99.23, -11.92, 128.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.82, -12.02, 138.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.08, -12.46, 151.23, 2, 0)
	MovementLoopAddLocation(NPC, -135.49, -12.78, 154.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.69, -13.61, 157.74, 2, 0)
	MovementLoopAddLocation(NPC, -129.09, -14.47, 171.75, 2, 0)
	MovementLoopAddLocation(NPC, -127.97, -14.89, 180.01, 2, 0)
	MovementLoopAddLocation(NPC, -126.86, -15.02, 183.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -109.38, -12.47, 179.7, 2, 0)
	MovementLoopAddLocation(NPC, -114.7, -13.84, 185.33, 2, 0)
	MovementLoopAddLocation(NPC, -116.44, -13.82, 187.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.75, -14.9, 197.95, 2, 0)
	MovementLoopAddLocation(NPC, -121.84, -14.82, 197.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -123.87, -12.72, 197.94, 2, 0)
	MovementLoopAddLocation(NPC, -127.96, -12.44, 197.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -113.3, -12.51, 184.92, 2, 0)
	MovementLoopAddLocation(NPC, -110.38, -12.56, 184, 2, 0)
	MovementLoopAddLocation(NPC, -105.73, -12.95, 179.84, 2, 0)
	MovementLoopAddLocation(NPC, -105.25, -12.9, 177.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -105.34, -12.45, 176.6, 2, 0)
	MovementLoopAddLocation(NPC, -101.43, -11.98, 134.79, 2, math.random(10, 20))
end


