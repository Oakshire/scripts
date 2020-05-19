--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428059.lua
	Script Purpose	:	Waypoint Path for agrovedeer428059.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:24:35 
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
	MovementLoopAddLocation(NPC, 171.35, -3.29, 199.35, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 164.41, -2.79, 196.92, 2, 0)
	MovementLoopAddLocation(NPC, 157.75, -3.07, 196.97, 2, 0)
	MovementLoopAddLocation(NPC, 147.76, -3.61, 192.94, 2, 0)
	MovementLoopAddLocation(NPC, 138.43, -3.32, 187.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 159.85, -2.27, 187.02, 2, 0)
	MovementLoopAddLocation(NPC, 169.29, -2.79, 185.72, 2, 0)
	MovementLoopAddLocation(NPC, 173.38, -3.11, 185.91, 2, 0)
	MovementLoopAddLocation(NPC, 176.09, -3.37, 186.97, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 173.57, -3.1, 186, 2, 0)
	MovementLoopAddLocation(NPC, 152.77, -3.27, 184.66, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 162.03, -3.27, 148.26, 2, 0)
	MovementLoopAddLocation(NPC, 163.57, -3.55, 137.54, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 170.14, -3.24, 149.17, 2, 0)
	MovementLoopAddLocation(NPC, 190.13, -3.1, 151.78, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 186.52, -3.25, 158.72, 2, 0)
end


