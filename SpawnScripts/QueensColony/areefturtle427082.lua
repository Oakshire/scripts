--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427082.lua
	Script Purpose	:	Waypoint Path for areefturtle427082.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:40:44 
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
	MovementLoopAddLocation(NPC, 34.74, -11.96, -9.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.61, -12.49, -12.11, 2, 0)
	MovementLoopAddLocation(NPC, 40.79, -12.42, -18.92, 2, 0)
	MovementLoopAddLocation(NPC, 42.46, -12.22, -24.5, 2, 0)
	MovementLoopAddLocation(NPC, 42.2, -11.86, -34.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.26, -11.67, -26.6, 2, 0)
	MovementLoopAddLocation(NPC, 47.83, -11.75, -21.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.46, -12.08, -20.51, 2, 0)
	MovementLoopAddLocation(NPC, 64.12, -12.48, -17.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.03, -11.9, -5.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.73, -12.21, -2, 2, 0)
	MovementLoopAddLocation(NPC, 39.45, -12.81, 4.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.57, -12.38, -0.82, 2, 0)
	MovementLoopAddLocation(NPC, 38.06, -12.31, -6.79, 2, 0)
	MovementLoopAddLocation(NPC, 38.9, -13.72, -23.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.12, -14.09, -23.9, 2, 0)
	MovementLoopAddLocation(NPC, 25.96, -13.4, -26.75, 2, 0)
	MovementLoopAddLocation(NPC, 20.79, -13.22, -28.65, 2, 0)
	MovementLoopAddLocation(NPC, 15.4, -12.83, -30.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.86, -12.82, -26.97, 2, 0)
	MovementLoopAddLocation(NPC, 19.33, -12.83, -22.77, 2, 0)
	MovementLoopAddLocation(NPC, 20.21, -12.83, -17.16, 2, math.random(10, 20))
end


