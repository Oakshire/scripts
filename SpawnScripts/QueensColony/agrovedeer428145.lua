--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428145.lua
	Script Purpose	:	Waypoint Path for agrovedeer428145.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:16:38 
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
	MovementLoopAddLocation(NPC, 71.22, -3.8, 216.87, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 78.06, -3.8, 214.81, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 85.29, -4.36, 223.98, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 79.29, -4.53, 224.15, 2, 0)
	MovementLoopAddLocation(NPC, 74.93, -4.52, 224.6, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 68.76, -3.8, 211.97, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 64.71, -4.48, 224.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 72.84, -3.8, 213.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 59.45, -4.38, 221.93, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 64.89, -3.8, 212.59, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 63.82, -3.8, 214.35, 2, 0)
	MovementLoopAddLocation(NPC, 63.19, -3.8, 215.06, 2, 0)
	MovementLoopAddLocation(NPC, 62.45, -3.8, 216.46, 2, 0)
	MovementLoopAddLocation(NPC, 51.76, -4.37, 222.94, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 74.72, -3.81, 218.85, 2, math.random(10, 24))
end


