--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428044.lua
	Script Purpose	:	Waypoint Path for agrovedeer428044.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:05 
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
	MovementLoopAddLocation(NPC, 119.46, -4.16, 190.59, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 119.19, -3.85, 183.95, 2, 0)
	MovementLoopAddLocation(NPC, 120.18, -3.8, 180.57, 2, 0)
	MovementLoopAddLocation(NPC, 123.16, -3.6, 159.07, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 124.23, -3.87, 156.06, 2, 0)
	MovementLoopAddLocation(NPC, 126.77, -4, 153.06, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 122.91, -3.6, 167.62, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 119.6, -3.8, 180.72, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 118.68, -3.8, 182.25, 2, 0)
	MovementLoopAddLocation(NPC, 105.05, -3.54, 192.59, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 130.8, -3.73, 162.61, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 110.55, -4, 181.3, 2, 0)
	MovementLoopAddLocation(NPC, 109.6, -4, 182.94, 2, 0)
	MovementLoopAddLocation(NPC, 108.8, -4, 185.18, 2, 0)
	MovementLoopAddLocation(NPC, 100.56, -3.53, 190.96, 2, 0)
	MovementLoopAddLocation(NPC, 97.87, -3.6, 192.3, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 105.99, -4, 179.94, 2, 0)
	MovementLoopAddLocation(NPC, 108.25, -3.81, 175.33, 2, 0)
	MovementLoopAddLocation(NPC, 119.57, -3.6, 159.07, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 123.81, -3.6, 160.21, 2, 0)
	MovementLoopAddLocation(NPC, 128.74, -3.69, 160.88, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 126.35, -3.6, 167.97, 2, 0)
	MovementLoopAddLocation(NPC, 124.1, -3.6, 171.83, 2, 0)
	MovementLoopAddLocation(NPC, 122.09, -3.78, 180.23, 2, 0)
	MovementLoopAddLocation(NPC, 122.05, -4.05, 188.01, 2, 0)
end


