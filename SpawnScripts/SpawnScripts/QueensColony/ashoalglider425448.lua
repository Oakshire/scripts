--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425448.lua
	Script Purpose	:	Waypoint Path for ashoalglider425448.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:14:31 
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
	MovementLoopAddLocation(NPC, -139.17, -12.51, 149.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134, -13.4, 168.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.75, -13.03, 183.55, 2, 0)
	MovementLoopAddLocation(NPC, -135.43, -13.93, 188, 2, 0)
	MovementLoopAddLocation(NPC, -133.98, -14.52, 205.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -123.06, -13.31, 190.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.43, -13.52, 183.8, 2, 0)
	MovementLoopAddLocation(NPC, -135.37, -12.8, 181.57, 2, 0)
	MovementLoopAddLocation(NPC, -136.59, -12.04, 180.9, 2, 0)
	MovementLoopAddLocation(NPC, -139.5, -12.11, 179.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.9, -12.67, 163.18, 2, 0)
	MovementLoopAddLocation(NPC, -132.43, -12.56, 153.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.06, -12.99, 158.1, 2, 0)
	MovementLoopAddLocation(NPC, -137.58, -14.43, 175.57, 2, 0)
	MovementLoopAddLocation(NPC, -136.44, -14.4, 179.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.22, -13.46, 169.78, 2, 0)
	MovementLoopAddLocation(NPC, -125.29, -11.73, 158.11, 2, 0)
	MovementLoopAddLocation(NPC, -121.16, -11.53, 153.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -102.16, -11.02, 158.94, 2, 0)
	MovementLoopAddLocation(NPC, -98.87, -11.47, 159.73, 2, 0)
	MovementLoopAddLocation(NPC, -96.31, -11.57, 160.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -100.34, -11.51, 161.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -106.97, -11.49, 164.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.66, -11.96, 156.75, 2, 0)
end


