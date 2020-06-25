--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427090.lua
	Script Purpose	:	Waypoint Path for areefturtle427090.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:43:36 
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
	MovementLoopAddLocation(NPC, 13.02, -11.71, -39.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.63, -13.06, -23.92, 2, 0)
	MovementLoopAddLocation(NPC, 23.31, -13.91, -10.81, 2, 0)
	MovementLoopAddLocation(NPC, 25.9, -13.78, -3.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.76, -14.38, -5.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.66, -12.87, -6.08, 2, 0)
	MovementLoopAddLocation(NPC, 17.28, -11.81, -9.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.28, -12.68, 2.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.44, -13.05, -5.69, 2, 0)
	MovementLoopAddLocation(NPC, 32.89, -14.09, -20.18, 2, 0)
	MovementLoopAddLocation(NPC, 36.37, -14.35, -24.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.88, -12.62, -35.86, 2, 0)
	MovementLoopAddLocation(NPC, 9.96, -11.8, -48.67, 2, 0)
	MovementLoopAddLocation(NPC, 2.59, -11.47, -54.9, 2, 0)
	MovementLoopAddLocation(NPC, -6.93, -11.47, -61.11, 2, math.random(10, 20))
end


