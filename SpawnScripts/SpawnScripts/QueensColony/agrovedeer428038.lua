--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428038.lua
	Script Purpose	:	Waypoint Path for agrovedeer428038.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:45 
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
	MovementLoopAddLocation(NPC, 125.12, -3.6, 171.97, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 128.9, -3.6, 159.33, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 128.97, -3.69, 160.89, 2, 0)
	MovementLoopAddLocation(NPC, 127.87, -3.6, 170.92, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 115.27, -3.89, 166.61, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 124.6, -3.6, 169.27, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 119.73, -3.6, 172.05, 2, 0)
	MovementLoopAddLocation(NPC, 108.08, -4, 181.47, 2, 0)
	MovementLoopAddLocation(NPC, 106.14, -4, 182.18, 2, 0)
	MovementLoopAddLocation(NPC, 95.63, -3.91, 190.8, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 105.4, -3.52, 192, 2, 0)
	MovementLoopAddLocation(NPC, 120.01, -4.18, 190.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 98.08, -4.19, 169.18, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 101.86, -4, 180.63, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 103.74, -4, 179.96, 2, 0)
	MovementLoopAddLocation(NPC, 108, -3.85, 176.01, 2, 0)
	MovementLoopAddLocation(NPC, 126.23, -3.79, 165.69, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 107.43, -3.79, 192.21, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 115.89, -3.92, 183.55, 2, 0)
	MovementLoopAddLocation(NPC, 118.99, -3.8, 182.11, 2, 0)
	MovementLoopAddLocation(NPC, 120.81, -3.8, 179.92, 2, 0)
	MovementLoopAddLocation(NPC, 122.97, -3.65, 175.93, 2, 0)
	MovementLoopAddLocation(NPC, 121.99, -4, 154.69, 2, math.random(10, 24))
end


