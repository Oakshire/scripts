--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428680.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428680.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:28:22 
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
	MovementLoopAddLocation(NPC, -10.61, -11.39, -12.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.68, -11.69, -15.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.53, -11.51, -44.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.38, -11.85, -18.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.03, -11.16, -33.82, 2, 0)
	MovementLoopAddLocation(NPC, -10.97, -11.6, -40.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.25, -11.53, -40.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.59, -11.39, -27.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.97, -11.58, -28.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.3, -11.58, -33.26, 2, 0)
	MovementLoopAddLocation(NPC, -13.92, -11.48, -39.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.96, -10.95, -46.94, 2, 0)
	MovementLoopAddLocation(NPC, -6.76, -11.21, -52.67, 2, 0)
	MovementLoopAddLocation(NPC, -5.13, -11.66, -58.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.65, -10.7, -57.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.2, -11.04, -30.02, 2, 0)
end


