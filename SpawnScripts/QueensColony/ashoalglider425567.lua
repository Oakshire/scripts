--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425567.lua
	Script Purpose	:	Waypoint Path for ashoalglider425567.lua
	Script Author	:	Rylec
	Script Date	:	10-23-2019 07:03:02 
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
	MovementLoopAddLocation(NPC, -25.77, -12.51, 267.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.03, -13.13, 268.26, 2, 0)
	MovementLoopAddLocation(NPC, -16.25, -12.84, 272.83, 2, 0)
	MovementLoopAddLocation(NPC, -14.12, -11.83, 275.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.84, -13.13, 278.55, 2, 0)
	MovementLoopAddLocation(NPC, -22.11, -14.43, 282, 2, 4)
	MovementLoopAddLocation(NPC, -16.1, -13.27, 288.1, 2, 0)
	MovementLoopAddLocation(NPC, -13.95, -11.68, 290.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.33, -12.68, 285.9, 2, 0)
	MovementLoopAddLocation(NPC, -16.05, -13.06, 274.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.96, -14.36, 287.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.87, -14.21, 286.12, 2, 0)
	MovementLoopAddLocation(NPC, -20.27, -13.02, 279.49, 2, 0)
	MovementLoopAddLocation(NPC, -24.15, -12.1, 270.34, 2, math.random(10, 20))
end

