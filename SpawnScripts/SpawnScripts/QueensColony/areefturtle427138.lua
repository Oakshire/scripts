--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427138.lua
	Script Purpose	:	Waypoint Path for areefturtle427138.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:59:24 
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
	MovementLoopAddLocation(NPC, -96.8, -12.8, 189.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -102.24, -13.38, 189.41, 2, 0)
	MovementLoopAddLocation(NPC, -104.05, -13.79, 190.14, 2, 0)
	MovementLoopAddLocation(NPC, -105.83, -14.49, 192.3, 2, 0)
	MovementLoopAddLocation(NPC, -109.28, -14.83, 193.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.96, -14.97, 197.69, 2, 0)
	MovementLoopAddLocation(NPC, -101.93, -14.85, 204.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.83, -14.44, 204.46, 2, 0)
	MovementLoopAddLocation(NPC, -98.46, -13.3, 206.71, 2, 0)
	MovementLoopAddLocation(NPC, -93.61, -12.51, 215.81, 2, 0)
	MovementLoopAddLocation(NPC, -95.74, -12.54, 217.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -116.86, -13.6, 237.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -109.58, -13.55, 219.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.6, -13.51, 237.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -106.92, -13.44, 216.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -100.49, -14.51, 204.96, 2, 0)
	MovementLoopAddLocation(NPC, -98.58, -14.05, 203.81, 2, 0)
	MovementLoopAddLocation(NPC, -93.15, -13.41, 201.69, 2, 0)
	MovementLoopAddLocation(NPC, -88.71, -13.35, 199.44, 2, 0)
	MovementLoopAddLocation(NPC, -86, -12.73, 197.22, 2, 0)
	MovementLoopAddLocation(NPC, -83.79, -12.78, 195.57, 2, math.random(10, 20))
end

