--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428039.lua
	Script Purpose	:	Waypoint Path for agrovedeer428039.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:47 
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
	MovementLoopAddLocation(NPC, 117.6, -3.6, 174.78, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 130.27, -3.57, 168.95, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 112.44, -3.8, 170.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 126.28, -3.6, 166.96, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 111.84, -4, 167.22, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 117.1, -4.04, 187.85, 2, 0)
	MovementLoopAddLocation(NPC, 118.81, -4.2, 191.26, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 117.74, -3.88, 184.58, 2, 0)
	MovementLoopAddLocation(NPC, 115.94, -3.81, 181.42, 2, 0)
	MovementLoopAddLocation(NPC, 117.92, -3.79, 156.95, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 100.45, -4, 181.92, 2, 0)
	MovementLoopAddLocation(NPC, 98.04, -3.85, 184.55, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 100, -3.88, 184.22, 2, 0)
	MovementLoopAddLocation(NPC, 106.29, -4, 180.69, 2, 0)
	MovementLoopAddLocation(NPC, 108.95, -4, 179.75, 2, 0)
	MovementLoopAddLocation(NPC, 128.41, -3.6, 168.76, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 117.92, -3.6, 174.51, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 106.92, -3.8, 162.75, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 108.78, -4, 168.93, 2, 0)
end

