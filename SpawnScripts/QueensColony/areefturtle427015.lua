--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427015.lua
	Script Purpose	:	Waypoint Path for areefturtle427015.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:59:44 
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
	MovementLoopAddLocation(NPC, -53.29, -11.78, 193.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.49, -11.93, 191.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -66.21, -11.74, 185.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -88.35, -13.27, 206.6, 2, 0)
	MovementLoopAddLocation(NPC, -91.58, -13.44, 210.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -96.41, -13.33, 216.8, 2, 0)
	MovementLoopAddLocation(NPC, -106.8, -13.44, 241.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -100.89, -14.22, 229.99, 2, 0)
	MovementLoopAddLocation(NPC, -95.96, -14.8, 220.14, 2, 0)
	MovementLoopAddLocation(NPC, -91.58, -14.74, 218.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -91.01, -14.78, 210.1, 2, 0)
	MovementLoopAddLocation(NPC, -89.63, -14.07, 208.27, 2, 0)
	MovementLoopAddLocation(NPC, -85.32, -12.43, 200.7, 2, 0)
	MovementLoopAddLocation(NPC, -76.23, -11.57, 191.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -73.02, -12.19, 194.15, 2, 0)
	MovementLoopAddLocation(NPC, -61.55, -11.84, 193.48, 2, 0)
end
