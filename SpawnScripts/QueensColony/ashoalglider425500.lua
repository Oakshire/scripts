--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425500.lua
	Script Purpose	:	Waypoint Path for ashoalglider425500.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:46:48 
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
	MovementLoopAddLocation(NPC, -88.97, -13.49, 216.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -93.36, -11.73, 216.73, 2, 0)
	MovementLoopAddLocation(NPC, -99.18, -11.86, 218.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -96.76, -12.27, 225.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -87.5, -12.25, 215.7, 2, 0)
	MovementLoopAddLocation(NPC, -80.18, -12.16, 206.32, 2, 0)
	MovementLoopAddLocation(NPC, -78.19, -11.21, 204.48, 2, 0)
	MovementLoopAddLocation(NPC, -75.54, -11.22, 200.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -82.73, -12.2, 199.88, 2, 0)
	MovementLoopAddLocation(NPC, -86.93, -12.17, 197.83, 2, 0)
	MovementLoopAddLocation(NPC, -89.18, -12.47, 195.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.14, -11.88, 223.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -96.16, -13.14, 224.76, 2, 0)
	MovementLoopAddLocation(NPC, -89.52, -14.37, 225.13, 2, 0)
	MovementLoopAddLocation(NPC, -87.82, -14.49, 226.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.63, -14.57, 224, 2, 0)
	MovementLoopAddLocation(NPC, -132.09, -14.52, 223.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.57, -14.58, 224.12, 2, 0)
	MovementLoopAddLocation(NPC, -116.15, -13.08, 224.24, 2, 0)
	MovementLoopAddLocation(NPC, -114.26, -13.14, 222.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -105.07, -11.91, 212.55, 2, 0)
	MovementLoopAddLocation(NPC, -101.76, -11.85, 210.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.87, -14.3, 218.06, 2, 0)
	MovementLoopAddLocation(NPC, -124.84, -14.66, 221.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.16, -12.49, 191.56, 2, math.random(10, 20))
end

