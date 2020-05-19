--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427604.lua
	Script Purpose	:	Waypoint Path for aneedlefang427604.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:35:11 
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
	MovementLoopAddLocation(NPC, -5.67, -12.1, -81.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.55, -11.99, -77.53, 2, 0)
	MovementLoopAddLocation(NPC, 2.52, -12.01, -71, 2, 0)
	MovementLoopAddLocation(NPC, 4.53, -12.14, -65.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.17, -10.42, -68.13, 2, 0)
	MovementLoopAddLocation(NPC, -9.44, -10.3, -72.35, 2, 0)
	MovementLoopAddLocation(NPC, -13.02, -10.3, -74.4, 2, 0)
	MovementLoopAddLocation(NPC, -21.61, -11.03, -81.66, 2, 0)
	MovementLoopAddLocation(NPC, -26.28, -11.76, -84.22, 2, 0)
	MovementLoopAddLocation(NPC, -31.67, -12.14, -85.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.25, -10.5, -81.22, 2, 0)
	MovementLoopAddLocation(NPC, -12.42, -10.3, -71.33, 2, 0)
	MovementLoopAddLocation(NPC, -7.74, -11.14, -67.08, 2, 0)
	MovementLoopAddLocation(NPC, -1.77, -11.94, -63.5, 2, 0)
	MovementLoopAddLocation(NPC, 3.36, -12.96, -59.47, 2, 0)
	MovementLoopAddLocation(NPC, 7.13, -12.91, -57.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.06, -11.75, -56.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.93, -10.38, -45.2, 2, 0)
	MovementLoopAddLocation(NPC, 24.61, -10.95, -33.91, 2, 0)
	MovementLoopAddLocation(NPC, 28.94, -14.14, -24.03, 2, 0)
	MovementLoopAddLocation(NPC, 29.22, -14.44, -18.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.68, -11.64, -37.01, 2, 0)
	MovementLoopAddLocation(NPC, 19.75, -11.27, -42.59, 2, 0)
	MovementLoopAddLocation(NPC, 15.54, -11.94, -49.12, 2, 0)
	MovementLoopAddLocation(NPC, 13.06, -12.77, -56.17, 2, 0)
	MovementLoopAddLocation(NPC, 10.64, -12.93, -60.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.1, -12.05, -49.96, 2, 0)
	MovementLoopAddLocation(NPC, 6.55, -12.32, -42.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.46, -11.99, -67.71, 2, 0)
	MovementLoopAddLocation(NPC, -5.4, -12, -67.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.7, -12.02, -71.07, 2, 0)
	MovementLoopAddLocation(NPC, 7.22, -11.85, -75.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -4.44, -10.3, -78.74, 2, 0)
	MovementLoopAddLocation(NPC, -11.37, -10.3, -82.93, 2, 0)
	MovementLoopAddLocation(NPC, -19.57, -11.85, -92.07, 2, 0)
	MovementLoopAddLocation(NPC, -23.75, -11.93, -92.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.26, -11.3, -88.44, 2, 0)
	MovementLoopAddLocation(NPC, -10.83, -11.59, -85.24, 2, 0)
end
