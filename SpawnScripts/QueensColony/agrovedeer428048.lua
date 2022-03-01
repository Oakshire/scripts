--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428048.lua
	Script Purpose	:	Waypoint Path for agrovedeer428048.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:19:20 
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
	MovementLoopAddLocation(NPC, 138.54, -4, 143.73, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.33, -2.95, 145.42, 2, 0)
	MovementLoopAddLocation(NPC, 177.8, -3, 147.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 182.66, -3.19, 154.05, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 167.74, -3.14, 160.04, 2, 0)
	MovementLoopAddLocation(NPC, 164.59, -3.14, 160.49, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.54, -3.32, 160.04, 2, 0)
	MovementLoopAddLocation(NPC, 155.56, -3.22, 155.67, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 186.37, -3.87, 167.8, 2, 0)
	MovementLoopAddLocation(NPC, 188.63, -4.1, 168.34, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 177.72, -3.19, 156.32, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 176.07, -3.2, 159.87, 2, 0)
	MovementLoopAddLocation(NPC, 170.19, -3, 166.23, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 185.49, -3, 158.29, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 184.34, -3.07, 159.49, 2, 0)
	MovementLoopAddLocation(NPC, 179.03, -3.59, 171.42, 2, 0)
	MovementLoopAddLocation(NPC, 171.45, -3.14, 184.98, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 169, -2.68, 186.82, 2, 0)
	MovementLoopAddLocation(NPC, 160.97, -2.9, 196.79, 2, 0)
	MovementLoopAddLocation(NPC, 157.62, -3.07, 197.17, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 150.51, -3.56, 176.8, 2, 0)
	MovementLoopAddLocation(NPC, 150.16, -3.01, 166.77, 2, 0)
end


