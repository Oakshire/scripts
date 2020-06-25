--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428058.lua
	Script Purpose	:	Waypoint Path for agrovedeer428058.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:20:19 
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
	MovementLoopAddLocation(NPC, 177.64, -3.66, 181.01, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 176.18, -3.56, 183.64, 2, 0)
	MovementLoopAddLocation(NPC, 168.28, -3.87, 205.66, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 157.06, -3.24, 178.93, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 165.02, -3.16, 174.79, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 156.04, -3.07, 192.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 182.25, -3.77, 173.18, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 176.85, -3.58, 182.01, 2, 0)
	MovementLoopAddLocation(NPC, 176.19, -3.55, 184.77, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 171.42, -3.3, 199.31, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 170, -2.79, 192.01, 2, 0)
	MovementLoopAddLocation(NPC, 169.84, -3.36, 155.92, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 166.6, -2.54, 185.16, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 169.47, -3.21, 183.6, 2, 0)
end


