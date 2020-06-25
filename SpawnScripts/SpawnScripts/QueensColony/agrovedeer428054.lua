--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428054.lua
	Script Purpose	:	Waypoint Path for agrovedeer428054.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:19:53 
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
	MovementLoopAddLocation(NPC, 146.16, -3.8, 195.08, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 148.73, -3.88, 199.16, 2, 0)
	MovementLoopAddLocation(NPC, 150.99, -3.98, 203.38, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 150.87, -3.76, 199.5, 2, 0)
	MovementLoopAddLocation(NPC, 136.64, -3.72, 178.52, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 135.59, -3.69, 176.76, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 157.29, -4.05, 207.51, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 157.35, -3.81, 205.02, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 166.52, -2.39, 187.1, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.12, -3.09, 187.02, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 147.49, -3.5, 172.37, 2, 0)
	MovementLoopAddLocation(NPC, 146.9, -3.5, 168.64, 2, 0)
	MovementLoopAddLocation(NPC, 158.74, -3.84, 133.55, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 144.81, -3.68, 162.96, 2, math.random(10, 24))
end


