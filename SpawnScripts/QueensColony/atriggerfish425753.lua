--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425753.lua
	Script Purpose	:	Waypoint Path for atriggerfish425753.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:18:30 
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
	MovementLoopAddLocation(NPC, -97.96, -11.98, 131.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -126.62, -12.01, 149.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.41, -11.94, 168.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -118.7, -12.54, 171.32, 2, 0)
	MovementLoopAddLocation(NPC, -128.58, -13.3, 179.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.15, -13.24, 168.59, 2, 0)
	MovementLoopAddLocation(NPC, -136.64, -12.68, 130.71, 2, 0)
	MovementLoopAddLocation(NPC, -141.31, -12.64, 106.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.23, -12.45, 91.2, 2, 0)
	MovementLoopAddLocation(NPC, -146.59, -12.74, 82.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.55, -11.52, 88.54, 2, 0)
	MovementLoopAddLocation(NPC, -128.81, -11.48, 90.36, 2, 0)
	MovementLoopAddLocation(NPC, -126.71, -11.94, 101.25, 2, math.random(10, 20))
end


