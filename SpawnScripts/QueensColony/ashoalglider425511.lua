--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425511.lua
	Script Purpose	:	Waypoint Path for ashoalglider425511.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:37:34 
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
	MovementLoopAddLocation(NPC, 22.47, -12.65, -1.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.88, -13.75, -6.05, 2, 0)
	MovementLoopAddLocation(NPC, 27.71, -14.74, -15.15, 2, 0)
	MovementLoopAddLocation(NPC, 30.3, -14.88, -21.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.45, -13.38, -24.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.55, -13.32, -25.51, 2, 0)
	MovementLoopAddLocation(NPC, 21.32, -12.62, -27.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.36, -13.42, -24.72, 2, 0)
	MovementLoopAddLocation(NPC, 26.71, -13.78, -21.04, 2, 0)
	MovementLoopAddLocation(NPC, 31.93, -14.77, -16.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.54, -13.9, -17.04, 2, 0)
	MovementLoopAddLocation(NPC, 26.97, -12.98, -18.74, 2, 0)
	MovementLoopAddLocation(NPC, 20.29, -11.91, -27.05, 2, 0)
	MovementLoopAddLocation(NPC, 12.09, -11.56, -35.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.78, -12.08, -12.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.57, -11.85, -20.48, 2, 0)
	MovementLoopAddLocation(NPC, 26.79, -12.03, -28.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.56, -10.7, -33.42, 2, 0)
	MovementLoopAddLocation(NPC, 29.39, -10.7, -49.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.97, -10.62, -43.79, 2, 0)
	MovementLoopAddLocation(NPC, 22.14, -11.87, -40.67, 2, 0)
	MovementLoopAddLocation(NPC, 15.03, -12.17, -37.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.82, -10.7, -21.45, 2, 0)
	MovementLoopAddLocation(NPC, 11.4, -10.7, -16.25, 2, 0)
	MovementLoopAddLocation(NPC, 18.4, -12.06, -7.56, 2, 0)
end


