--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428049.lua
	Script Purpose	:	Waypoint Path for agrovedeer428049.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:19:23 
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
	MovementLoopAddLocation(NPC, 149.58, -3.94, 131.7, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 154.68, -3.24, 154.59, 2, 0)
	MovementLoopAddLocation(NPC, 157.15, -3.4, 160.02, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 149.59, -3.14, 143.56, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 136.77, -3.5, 160.27, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 171.41, -2.99, 158.15, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 171.41, -3.44, 182.93, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 177.66, -3.8, 175.22, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 176.02, -3.55, 192.46, 2, 0)
	MovementLoopAddLocation(NPC, 176.27, -3.61, 199.52, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 176.57, -3.57, 197.7, 2, 0)
	MovementLoopAddLocation(NPC, 185.65, -3.99, 181.07, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 176.2, -3.07, 154.26, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 172.85, -3.3, 197.17, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 165.25, -3.15, 176.28, 2, 0)
	MovementLoopAddLocation(NPC, 164.03, -3.15, 173.7, 2, 0)
	MovementLoopAddLocation(NPC, 158.45, -3.56, 153.03, 2, 0)
	MovementLoopAddLocation(NPC, 152.32, -3.19, 138.52, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.33, -3.7, 135.16, 2, 0)
end


