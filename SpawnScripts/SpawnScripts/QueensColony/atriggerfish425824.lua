--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425824.lua
	Script Purpose	:	Waypoint Path for atriggerfish425824.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:08:01 
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
	MovementLoopAddLocation(NPC, -148.44, -15, 160.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.67, -14.24, 168.79, 2, 0)
	MovementLoopAddLocation(NPC, -139.37, -14.85, 179.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.37, -14.27, 171.44, 2, 0)
	MovementLoopAddLocation(NPC, -129, -13.18, 171.96, 2, 0)
	MovementLoopAddLocation(NPC, -120.46, -13.1, 175.11, 2, 0)
	MovementLoopAddLocation(NPC, -117.66, -12.68, 175.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -116.69, -12.52, 167.44, 2, 0)
	MovementLoopAddLocation(NPC, -110.61, -11.95, 145.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -116.01, -11.95, 134.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.37, -12.09, 140.14, 2, 0)
	MovementLoopAddLocation(NPC, -135.85, -11.83, 142.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.22, -12.53, 159.67, 2, 0)
	MovementLoopAddLocation(NPC, -131, -12.65, 167.72, 2, 0)
	MovementLoopAddLocation(NPC, -130.43, -12.66, 179.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.29, -13.56, 167.17, 2, 0)
	MovementLoopAddLocation(NPC, -144.65, -14.95, 157.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.32, -15.31, 174.73, 2, 0)
	MovementLoopAddLocation(NPC, -125.39, -14.83, 176.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.08, -14.3, 175.28, 2, 0)
	MovementLoopAddLocation(NPC, -130.61, -12.94, 164.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.22, -13.65, 163.26, 2, 0)
end

