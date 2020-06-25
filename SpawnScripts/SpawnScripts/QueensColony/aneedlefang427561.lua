--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427561.lua
	Script Purpose	:	Waypoint Path for aneedlefang427561.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:59:51 
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
	MovementLoopAddLocation(NPC, -127.35, -15.02, 229.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -87.49, -14.13, 223.43, 2, 0)
	MovementLoopAddLocation(NPC, -81.05, -13.12, 222.61, 2, 0)
	MovementLoopAddLocation(NPC, -75.67, -13.02, 224.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -76.08, -12.09, 219.38, 2, 0)
	MovementLoopAddLocation(NPC, -75.37, -11.92, 209.4, 2, 0)
	MovementLoopAddLocation(NPC, -72.77, -11.85, 200.33, 2, 0)
	MovementLoopAddLocation(NPC, -68.71, -12.02, 193.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -89.57, -12.11, 193.87, 2, 0)
	MovementLoopAddLocation(NPC, -105.36, -12.91, 191.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -86.23, -11.98, 190.33, 2, 0)
	MovementLoopAddLocation(NPC, -71.53, -12.03, 189.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -93.2, -11.81, 198.57, 2, 0)
	MovementLoopAddLocation(NPC, -104.8, -13.47, 201.17, 2, 0)
	MovementLoopAddLocation(NPC, -110.89, -13.94, 205.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.93, -15.05, 216.39, 2, 0)
	MovementLoopAddLocation(NPC, -111.48, -15.19, 220.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -95.81, -14.1, 218.9, 2, 0)
	MovementLoopAddLocation(NPC, -79.91, -13.31, 218.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -76.46, -12.97, 189.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -66.38, -11.44, 190.85, 2, 0)
	MovementLoopAddLocation(NPC, -51.08, -11.97, 189.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -61.11, -10.39, 201.84, 2, 0)
	MovementLoopAddLocation(NPC, -77.2, -11.34, 204.4, 2, 0)
	MovementLoopAddLocation(NPC, -98.37, -12.57, 209.64, 2, 0)
end

