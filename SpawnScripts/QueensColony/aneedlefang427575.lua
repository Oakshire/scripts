--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427575.lua
 	Script Purpose	:	Waypoint Path for aneedlefang427575.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:12:56 
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
	MovementLoopAddLocation(NPC, 59.15, -12.06, -64.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.35, -12.05, -62.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.63, -11.53, -48.52, 2, 0)
	MovementLoopAddLocation(NPC, 89.7, -10.46, -32.15, 2, 0)
	MovementLoopAddLocation(NPC, 99.82, -11.07, -21.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 93.48, -11.1, -20.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 86.55, -11.19, -35.25, 2, 0)
	MovementLoopAddLocation(NPC, 79.58, -10.25, -45.03, 2, 0)
	MovementLoopAddLocation(NPC, 73.01, -10.2, -54.26, 2, 0)
	MovementLoopAddLocation(NPC, 63.79, -12.06, -78.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.96, -12.07, -76.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.68, -11.81, -78.49, 2, 0)
	MovementLoopAddLocation(NPC, 43.46, -11.57, -83.96, 2, 0)
	MovementLoopAddLocation(NPC, 31.19, -11.07, -86.71, 2, 0)
	MovementLoopAddLocation(NPC, 27.76, -11.09, -88.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.37, -11.38, -81.56, 2, 0)
	MovementLoopAddLocation(NPC, 54.92, -11.59, -80.2, 2, 0)
	MovementLoopAddLocation(NPC, 58.97, -11.95, -78.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.19, -11.26, -80.28, 2, 0)
	MovementLoopAddLocation(NPC, 49.59, -11.07, -84.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.01, -11.91, -86.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.37, -11.38, -81.4, 2, 0)
	MovementLoopAddLocation(NPC, 68.42, -11.99, -66.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.54, -12.03, -53.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.27, -12.06, -62.07, 2, math.random(10, 20))
end


