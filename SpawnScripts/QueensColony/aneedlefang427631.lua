--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427631.lua
	Script Purpose	:	Waypoint Path for aneedlefang427631.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:21:52 
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
	MovementLoopAddLocation(NPC, 6.08, -11.19, 24.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.15, -11.98, 31.39, 2, 0)
	MovementLoopAddLocation(NPC, 17.03, -12.04, 38.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.78, -11.67, 33.2, 2, 0)
	MovementLoopAddLocation(NPC, 48.4, -11.18, 28.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.82, -12.75, 19.32, 2, 0)
	MovementLoopAddLocation(NPC, 43.63, -13.1, 14.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.18, -12.48, 17.24, 2, 0)
	MovementLoopAddLocation(NPC, 28.98, -12.5, 20.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.19, -12.76, 25.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.19, -12.32, 16.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.34, -12.46, 21.03, 2, 0)
end


