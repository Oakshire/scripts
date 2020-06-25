--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427636.lua
	Script Purpose	:	Waypoint Path for aneedlefang427636.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:47:56 
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
	MovementLoopAddLocation(NPC, 28.8, -12.33, 30.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.33, -12.31, 25.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.77, -13.01, 33.49, 2, 0)
	MovementLoopAddLocation(NPC, -1.45, -11.82, 61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.22, -12.55, 54.54, 2, 0)
	MovementLoopAddLocation(NPC, 0.36, -13.01, 48.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.88, -13.49, 28.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -5.04, -12.78, 44.8, 2, 0)
	MovementLoopAddLocation(NPC, -0.46, -12.78, 56.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.8, -12.84, 49.47, 2, 0)
	MovementLoopAddLocation(NPC, -5.77, -12.86, 40.93, 2, 0)
	MovementLoopAddLocation(NPC, -9.89, -14.01, 35.61, 2, 0)
	MovementLoopAddLocation(NPC, -13.98, -13.81, 32.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.9, -13.2, 35.68, 2, 0)
	MovementLoopAddLocation(NPC, 20.97, -12.56, 39.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.09, -12.31, 35.92, 2, 0)
	MovementLoopAddLocation(NPC, 5.15, -12.53, 31.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.55, -11.22, 65.19, 2, math.random(10, 20))
end


