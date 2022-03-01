--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425585.lua
	Script Purpose	:	Waypoint Path for ashoalglider425585.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:26:37 
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
	MovementLoopAddLocation(NPC, -30.08, -11.3, -31.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.14, -11.83, -27.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.92, -11.44, -20.47, 2, 0)
	MovementLoopAddLocation(NPC, -24.62, -11.08, -0.49, 2, 0)
	MovementLoopAddLocation(NPC, -25.3, -12.19, 10.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.54, -10.7, 1.18, 2, 0)
	MovementLoopAddLocation(NPC, -30.49, -10.7, -15.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.37, -11.04, -11.34, 2, 0)
	MovementLoopAddLocation(NPC, -18.01, -11.43, -2.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.77, -11.92, -23.3, 2, 0)
	MovementLoopAddLocation(NPC, -30.23, -12.48, -34.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.5, -11.49, -40.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.03, -11.51, -37.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.52, -11.53, -40.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.46, -11.11, -33.54, 2, 0)
	MovementLoopAddLocation(NPC, -5.25, -11.62, -16.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -9.11, -10.98, -14.54, 2, 0)
	MovementLoopAddLocation(NPC, -20.44, -11.08, 0.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.97, -10.7, -16.58, 2, 0)
	MovementLoopAddLocation(NPC, -28.48, -11.23, -29.15, 2, 0)
	MovementLoopAddLocation(NPC, -33.13, -11.02, -35.71, 2, math.random(10, 20))
end


