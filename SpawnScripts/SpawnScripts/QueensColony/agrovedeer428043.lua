--[[
        Script Name     :       SpawnScripts/QueensColony/agrovedeer428043.lua
	Script Purpose	:	Waypoint Path for agrovedeer428043.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:02 
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
	MovementLoopAddLocation(NPC, 105.32, -3.58, 194.18, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 115.63, -3.7, 174.63, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 108.78, -4, 167.13, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 107.71, -3.84, 175.91, 2, 0)
	MovementLoopAddLocation(NPC, 105.04, -4, 182.13, 2, 0)
	MovementLoopAddLocation(NPC, 105.03, -4.13, 202.74, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 95.09, -4.2, 208.45, 2, 0)
	MovementLoopAddLocation(NPC, 87.16, -4.48, 212.25, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 100.79, -3.94, 200.22, 2, 0)
	MovementLoopAddLocation(NPC, 105.25, -3.79, 196.47, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 124.96, -4.08, 188.58, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 121.14, -3.6, 175.02, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 115.7, -3.8, 180.27, 2, 0)
	MovementLoopAddLocation(NPC, 108.45, -3.97, 190.36, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 88.86, -4.36, 185.58, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 88.97, -4.37, 188.45, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 105.54, -3.69, 186.08, 2, 0)
	MovementLoopAddLocation(NPC, 109.82, -4, 185.68, 2, 0)
	MovementLoopAddLocation(NPC, 116.04, -3.96, 184.49, 2, math.random(10, 24))
end


