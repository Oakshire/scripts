--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430718.lua
	Script Purpose	:	Waypoint Path for asmallcoastalcrab430718.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:42:20 
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
	MovementLoopAddLocation(NPC, -42.96, -4.92, 209.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.44, -5.93, 207.51, 2, 0)	
	MovementLoopAddLocation(NPC, -45.33, -6.69, 206.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.25, -8.09, 213.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -56.21, -7.98, 215.67, 2, 0)
	MovementLoopAddLocation(NPC, -56.29, -8.36, 218.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -55.15, -7.82, 214.00, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.43, -8.32, 210.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.60, -8.03, 208.28, 2, 0)
	MovementLoopAddLocation(NPC, -47.96, -8.43, 204.32, 2, 0)
	MovementLoopAddLocation(NPC, -46.79, -8.37, 203.75, 2, 0)
	MovementLoopAddLocation(NPC, -45.17, -8.99, 201.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.77, -8.71, 202.42, 2, 0)
	MovementLoopAddLocation(NPC, -47.36, -9.08, 202.50, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.01, -8.51, 203.49, 2, 0)
	MovementLoopAddLocation(NPC, -44.16, -6.81, 206.04, 2, 0)
	MovementLoopAddLocation(NPC, -43.74, -5.31, 207.99, 2, 0)
end


