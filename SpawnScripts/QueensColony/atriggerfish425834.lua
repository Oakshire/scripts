--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425834.lua
	Script Purpose	:	Waypoint Path for atriggerfish425834.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:47:49 
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
	MovementLoopAddLocation(NPC, 12.42, -13.96, 21.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.56, -13.85, 35.3, 2, 0)
	MovementLoopAddLocation(NPC, 21.51, -13.12, 48.35, 2, 0)
	MovementLoopAddLocation(NPC, 21.17, -12.8, 55.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.94, -12.95, 48.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.2, -13.01, 44.14, 2, 0)
	MovementLoopAddLocation(NPC, 37.59, -12.86, 41.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.44, -13.38, 39.56, 2, 0)
	MovementLoopAddLocation(NPC, 12.3, -13.82, 37.57, 2, 0)
	MovementLoopAddLocation(NPC, 6.54, -13.9, 34.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.9, -13.94, 32.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.68, -13.4, 29.78, 2, 0)
	MovementLoopAddLocation(NPC, 21.32, -13.65, 27.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.06, -13.74, 19.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.35, -13.55, 15.99, 2, math.random(10, 20))
end


