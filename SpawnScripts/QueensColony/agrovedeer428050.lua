--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428050.lua
	Script Purpose	:	Waypoint Path for agrovedeer428050.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:19:28 
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
	MovementLoopAddLocation(NPC, 157.35, -2.59, 145.99, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 159.37, -3.18, 149.22, 2, 0)
	MovementLoopAddLocation(NPC, 171.43, -3.2, 160.33, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 167.18, -3.05, 159.76, 2, 0)
	MovementLoopAddLocation(NPC, 152.73, -3.2, 154.26, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 152.79, -3.53, 180.79, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 163.14, -3.16, 172.75, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 140.12, -3.56, 173.19, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 146.06, -4.19, 202.15, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 163.74, -4.05, 207.51, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 177.63, -3.57, 187.13, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 186.8, -3.03, 156.37, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 163.71, -3.32, 162.52, 2, math.random(10, 24))
end


