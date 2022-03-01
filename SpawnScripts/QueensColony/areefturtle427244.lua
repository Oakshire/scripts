--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427244.lua
	Script Purpose	:	Waypoint Path for areefturtle427244.lua
	Script Author	:	Rylec
	Script Date	:	10-22-2019 09:52:02 
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
	MovementLoopAddLocation(NPC, 15.89, -13.11, 274.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.11, -12.06, 262.74, 2, 0)
	MovementLoopAddLocation(NPC, 11.92, -10.24, 257.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.06, -13.09, 274.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.06, -13.03, 269.83, 2, 0)
	MovementLoopAddLocation(NPC, 10.71, -11.9, 265.21, 2, 0)
	MovementLoopAddLocation(NPC, 18.86, -10.28, 255.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.66, -12.91, 263.77, 2, 0)
end



