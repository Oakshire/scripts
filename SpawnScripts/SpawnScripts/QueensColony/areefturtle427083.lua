--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427083.lua
	Script Purpose	:	Waypoint Path for areefturtle427083.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:41:08 
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
	MovementLoopAddLocation(NPC, 34.42, -11.73, 4.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.67, -12.09, -10.27, 2, 0)
	MovementLoopAddLocation(NPC, 23.39, -11.74, -12.53, 2, 0)
	MovementLoopAddLocation(NPC, 19.48, -11.64, -15.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.69, -13.7, -18.07, 2, 0)
	MovementLoopAddLocation(NPC, 24.8, -15.23, -21.36, 2, 0)
	MovementLoopAddLocation(NPC, 25.33, -15.36, -23.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.22, -14.43, -15.59, 2, 0)
	MovementLoopAddLocation(NPC, 46, -13.48, -12.56, 2, 0)
	MovementLoopAddLocation(NPC, 61.86, -13.65, -9.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.08, -13.3, -3.29, 2, 0)
	MovementLoopAddLocation(NPC, 25.49, -12.94, -1.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.08, -12.37, -3.19, 2, 0)
	MovementLoopAddLocation(NPC, 56.9, -11.8, -8.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.84, -11.9, -2.14, 2, math.random(10, 20))
end


