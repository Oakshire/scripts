--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427864.lua
	Script Purpose	:	Waypoint Path for aneedlefang427864.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:16:47 
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
	MovementLoopAddLocation(NPC, -27.58, -11.3, -31.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.79, -10.3, -27.17, 2, 0)
	MovementLoopAddLocation(NPC, -46.6, -10.3, -21.27, 2, 0)
	MovementLoopAddLocation(NPC, -58.66, -11.09, -14.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -68.12, -10.48, -6.87, 2, 0)
	MovementLoopAddLocation(NPC, -81.62, -10.29, 1.14, 2, 0)
	MovementLoopAddLocation(NPC, -91.12, -11.47, 10.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -77.87, -11.3, 11.78, 2, 0)
	MovementLoopAddLocation(NPC, -65.74, -10.3, 15.81, 2, 0)
	MovementLoopAddLocation(NPC, -53.84, -10.38, 21.67, 2, 0)
	MovementLoopAddLocation(NPC, -46.97, -11.54, 24.67, 2, 0)
	MovementLoopAddLocation(NPC, -33.07, -12.39, 31.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.91, -11.81, 25.3, 2, 0)
	MovementLoopAddLocation(NPC, -50.53, -10.73, 23.32, 2, 0)
	MovementLoopAddLocation(NPC, -58.79, -10.3, 20.49, 2, 0)
	MovementLoopAddLocation(NPC, -70.28, -10.3, 12.38, 2, 0)
	MovementLoopAddLocation(NPC, -81.02, -11.07, 8.7, 2, 0)
	MovementLoopAddLocation(NPC, -93.09, -11.04, 3.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -78.67, -11.25, 9.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -71.27, -10.3, 3.48, 2, 0)
	MovementLoopAddLocation(NPC, -57.41, -10.3, -4.66, 2, 0)
	MovementLoopAddLocation(NPC, -50.09, -11.14, -8.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.64, -10.19, -12.56, 2, 0)
	MovementLoopAddLocation(NPC, -39.6, -10.3, -19.1, 2, 0)
	MovementLoopAddLocation(NPC, -34.44, -10.35, -26.41, 2, 0)
end

