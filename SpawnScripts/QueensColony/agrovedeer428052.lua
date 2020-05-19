--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428052.lua
	Script Purpose	:	Waypoint Path for agrovedeer428052.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:19:48 
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
	MovementLoopAddLocation(NPC, 157.47, -4.16, 209.71, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 178.04, -3.61, 195.28, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 152.41, -3.33, 197.56, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 168.42, -3.43, 179.1, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 166.94, -3.29, 172.27, 2, 0)
	MovementLoopAddLocation(NPC, 165.1, -3.17, 169.29, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 162.47, -3.06, 174.11, 2, 0)
	MovementLoopAddLocation(NPC, 151.24, -4.1, 205.53, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 158.75, -3.45, 203.11, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 137.77, -3.37, 151.62, 2, 0)
	MovementLoopAddLocation(NPC, 137.06, -3.82, 147.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 146.56, -3.71, 148.12, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 147.99, -3.61, 149.88, 2, 0)
	MovementLoopAddLocation(NPC, 158.85, -3.36, 150, 2, math.random(10, 24))
end


