--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425465.lua
	Script Purpose	:	Waypoint Path for ashoalglider425465.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:16:44 
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
	MovementLoopAddLocation(NPC, -35.46, -11.37, -47.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.59, -10.7, -20.22, 2, 0)
	MovementLoopAddLocation(NPC, -22.27, -10.7, -4.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.25, -10.7, 14.8, 2, 0)
	MovementLoopAddLocation(NPC, -41.4, -12.17, 23.95, 2, 0)
	MovementLoopAddLocation(NPC, -46.96, -12.01, 28.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.35, -10.65, 23.2, 2, 0)
	MovementLoopAddLocation(NPC, -53.87, -10.7, 21.63, 2, 0)
	MovementLoopAddLocation(NPC, -67.55, -10.7, 18.45, 2, 0)
	MovementLoopAddLocation(NPC, -84.74, -10.7, 16.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -66.33, -10.7, 2.18, 2, 0)
	MovementLoopAddLocation(NPC, -59.54, -10.7, -6.18, 2, 0)
	MovementLoopAddLocation(NPC, -53.62, -10.7, -14.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -51.16, -10.7, -19.99, 2, 0)
	MovementLoopAddLocation(NPC, -41.91, -10.7, -51.29, 2, 0)
	MovementLoopAddLocation(NPC, -33.53, -10.7, -72.73, 2, 0)
	MovementLoopAddLocation(NPC, -27.91, -11.51, -83.91, 2, 0)
	MovementLoopAddLocation(NPC, -23.83, -11.75, -87.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.03, -11.69, -78.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.34, -10.7, -75.88, 2, 0)
	MovementLoopAddLocation(NPC, -34.07, -10.7, -66.8, 2, 0)
	MovementLoopAddLocation(NPC, -34.75, -10.7, -49.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.91, -11.51, -40.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.64, -11.72, -44.04, 2, 0)
end


