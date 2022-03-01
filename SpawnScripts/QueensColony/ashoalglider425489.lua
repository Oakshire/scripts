--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425489.lua
	Script Purpose	:	Waypoint Path for ashoalglider425489.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:16:39 
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
	MovementLoopAddLocation(NPC, 49.32, -11.55, -82.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.81, -11.59, -69.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 54.85, -11.54, -71.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.56, -10.7, -50.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.12, -11.4, -69.61, 2, 0)
	MovementLoopAddLocation(NPC, 74.24, -11.54, -79.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 57.24, -11.55, -64.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.55, -11.58, -55.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.76, -11.6, -67.56, 2, 0)
	MovementLoopAddLocation(NPC, 48.71, -11.57, -75.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.42, -11.58, -80.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.47, -11.13, -81.15, 2, 0)
end


