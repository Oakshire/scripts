--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425541.lua
	Script Purpose	:	Waypoint Path for ashoalglider425541.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:45:36 
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
	MovementLoopAddLocation(NPC, -114.17, -11.82, 218.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.85, -11.99, 218.1, 2, 0)
	MovementLoopAddLocation(NPC, -88.86, -12.22, 216.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -96.36, -13.21, 220.15, 2, 0)
	MovementLoopAddLocation(NPC, -119.36, -14.42, 239.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.59, -13.12, 233.56, 2, 0)
	MovementLoopAddLocation(NPC, -119.39, -13.22, 231.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -100.05, -13, 204.07, 2, 0)
	MovementLoopAddLocation(NPC, -98.27, -12.19, 201.88, 2, 0)
	MovementLoopAddLocation(NPC, -96.13, -12.21, 199.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.23, -13.16, 235.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.22, -12.2, 239.5, 2, 0)
	MovementLoopAddLocation(NPC, -99.22, -12.09, 242.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -101.69, -14.39, 203.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.18, -11.79, 221.11, 2, math.random(10, 20))
end


