--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428053.lua
	Script Purpose	:	Waypoint Path for agrovedeer428053.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:19:50 
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
	MovementLoopAddLocation(NPC, 138.46, -3.59, 174.59, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.3, -3.68, 158.39, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 165.23, -3.18, 166.09, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 170.93, -3.22, 150.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 157.8, -3.46, 155.33, 2, 0)
	MovementLoopAddLocation(NPC, 140.36, -3.68, 160.22, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 144.09, -3.69, 160.39, 2, 0)
	MovementLoopAddLocation(NPC, 166.74, -3.28, 176.74, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 168.48, -3.42, 174.73, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 164.39, -3.15, 174.09, 2, 0)
	MovementLoopAddLocation(NPC, 144.72, -3.57, 164.34, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 136.83, -3.28, 183.38, 2, math.random(10, 24))
end


