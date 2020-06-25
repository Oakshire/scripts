--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426808.lua
	Script Purpose	:	Waypoint Path for atriggerfish426808.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:27:23 
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
	MovementLoopAddLocation(NPC, -89.21, -11.67, 13.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -68.73, -10.42, 17.42, 2, 0)
	MovementLoopAddLocation(NPC, -65.63, -10.2, 19.52, 2, 0)
	MovementLoopAddLocation(NPC, -52.78, -10.52, 20.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.72, -10.39, 6.8, 2, 0)
	MovementLoopAddLocation(NPC, -36.75, -10.3, -8.51, 2, 0)
	MovementLoopAddLocation(NPC, -33.48, -10.3, -11.52, 2, 0)
	MovementLoopAddLocation(NPC, -15.32, -11.64, -40.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.42, -11.84, -44.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.89, -12.03, -42.49, 2, 0)
	MovementLoopAddLocation(NPC, -37.68, -11.43, -38.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.81, -12.63, -38.86, 2, 0)
	MovementLoopAddLocation(NPC, -20.06, -12.84, -37.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.55, -12.02, -35.23, 2, 0)
	MovementLoopAddLocation(NPC, -9.3, -11.56, -30.68, 2, 0)
	MovementLoopAddLocation(NPC, -5, -11.72, -27.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.74, -12.02, -40.93, 2, 0)
	MovementLoopAddLocation(NPC, -15.65, -12.67, -44.51, 2, 0)
	MovementLoopAddLocation(NPC, -17.23, -12.89, -45.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.79, -12.11, -47.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.01, -11.5, -37.73, 2, 0)
	MovementLoopAddLocation(NPC, -55.57, -10.31, -25.81, 2, 0)
	MovementLoopAddLocation(NPC, -55.73, -10.2, -24.23, 2, 0)
	MovementLoopAddLocation(NPC, -63.23, -10.2, -22.24, 2, 0)
	MovementLoopAddLocation(NPC, -71.78, -10.2, -5.07, 2, 0)
	MovementLoopAddLocation(NPC, -79.81, -11.02, 4.18, 2, math.random(10, 20))
end


