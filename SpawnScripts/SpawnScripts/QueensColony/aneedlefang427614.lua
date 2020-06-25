--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427614.lua
	Script Purpose	:	Waypoint Path for aneedlefang427614.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:42:01 
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
	MovementLoopAddLocation(NPC, -2.3799, -12.01, -67.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.19, -12.01, -52.54, 2, 0)
	MovementLoopAddLocation(NPC, -3.57, -12, -47.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.32, -11.05, -46.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.27, -10.95, -64.63, 2, 0)
	MovementLoopAddLocation(NPC, 8.85, -11.28, -72.15, 2, 0)
	MovementLoopAddLocation(NPC, -6.73, -11.24, -85.55, 2, 0)
	MovementLoopAddLocation(NPC, -17.44, -12.11, -89.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.42, -10.3, -82.58, 2, 0)
	MovementLoopAddLocation(NPC, -14.78, -10.3, -76, 2, 0)
	MovementLoopAddLocation(NPC, -12.1, -10.3, -69.86, 2, 0)
	MovementLoopAddLocation(NPC, -11.74, -11.11, -61.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.24, -12.04, -65.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.15, -10.3, -70.4, 2, 0)
	MovementLoopAddLocation(NPC, -16.07, -10.3, -75.51, 2, 0)
	MovementLoopAddLocation(NPC, -22.16, -10.3, -81.17, 2, 0)
	MovementLoopAddLocation(NPC, -32.05, -12.09, -91.95, 2, 0)
	MovementLoopAddLocation(NPC, -31.93, -12.09, -91.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.19, -12.05, -88.11, 2, 0)
	MovementLoopAddLocation(NPC, -19.21, -10.34, -80.2, 2, 0)
	MovementLoopAddLocation(NPC, -10.11, -10.3, -68.81, 2, 0)
	MovementLoopAddLocation(NPC, -1.62, -12.14, -65.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.89, -11.79, -63.03, 2, math.random(10, 20))
end


