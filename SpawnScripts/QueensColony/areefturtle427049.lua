--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427049.lua
	Script Purpose	:	Waypoint Path for areefturtle427049.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:58:51 
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
	MovementLoopAddLocation(NPC, -102.14, -11.32, 16.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.61, -10.28, 16.51, 2, 0)
	MovementLoopAddLocation(NPC, -115.84, -10.26, 17.26, 2, 0)
	MovementLoopAddLocation(NPC, -120.8, -10.27, 19.71, 2, 0)
	MovementLoopAddLocation(NPC, -123.67, -10.26, 24.50, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.05, -11.57, 72.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.44, -11.88, 56.67, 2, 0)
	MovementLoopAddLocation(NPC, -136.2, -12.5, 56.87, 2, 0)
	MovementLoopAddLocation(NPC, -139.22, -12.84, 72.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.2, -12.8, 56.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.86, -13.28, 50.97, 2, 0)
	MovementLoopAddLocation(NPC, -130.04, -11.79, 21.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.48, -11.78, 45.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.19, -11.8, 54.3, 2, 0)
	MovementLoopAddLocation(NPC, -134.72, -11.65, 70.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.12, -11.77, 51.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.02, -11.8, 33.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -123.8, -10.4, 24.2, 2, 0)
	MovementLoopAddLocation(NPC, -120.08, -10.1, 20.77, 2, 0)
	MovementLoopAddLocation(NPC, -114.97, -10.13, 18.08, 2, 0)
	MovementLoopAddLocation(NPC, -109.18, -10.32, 16.95, 2, 0)
end


