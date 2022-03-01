--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428057.lua
	Script Purpose	:	Waypoint Path for agrovedeer428057.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:20:16 
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
	MovementLoopAddLocation(NPC, 149.44, -3.44, 186.79, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 147.85, -3.5, 172.65, 2, 0)
	MovementLoopAddLocation(NPC, 147.11, -3.5, 170.14, 2, 0)
	MovementLoopAddLocation(NPC, 148.24, -3.34, 153.8, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 157.12, -3.19, 149.25, 2, 0)
	MovementLoopAddLocation(NPC, 161.81, -3.26, 148.23, 2, 0)
	MovementLoopAddLocation(NPC, 172.61, -3.13, 139.65, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 131.91, -4.08, 147.81, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 140.24, -3.81, 147.83, 2, 0)
	MovementLoopAddLocation(NPC, 148.01, -3.38, 143.84, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 171.43, -3.32, 141.83, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 176.12, -3.41, 189.01, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 177.19, -3.58, 185.4, 2, 0)
	MovementLoopAddLocation(NPC, 179.37, -3.75, 180.97, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 155.71, -2.68, 187.12, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 155.64, -3.76, 203.59, 2, math.random(10, 24))
end


