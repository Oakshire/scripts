--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427596.lua
	Script Purpose	:	Waypoint Path for aneedlefang427596.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:28:29 
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
	MovementLoopAddLocation(NPC, 7.68, -10.3, -19.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.91, -10.98, -28.53, 2, 0)
	MovementLoopAddLocation(NPC, 3.8, -11.92, -53.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.25, -11.87, -51.57, 2, 0)
	MovementLoopAddLocation(NPC, 12.95, -11.93, -43.39, 2, 0)
	MovementLoopAddLocation(NPC, 22.12, -12.01, -28.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.35, -13.74, -16.43, 2, 0)
	MovementLoopAddLocation(NPC, 31.71, -14.02, -5.8, 2, 0)
	MovementLoopAddLocation(NPC, 33.47, -14.05, -4.25, 2, 0)
	MovementLoopAddLocation(NPC, 35.07, -14.06, -3.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.08, -14.05, -5.49, 2, 0)
	MovementLoopAddLocation(NPC, 28.41, -13.99, -7.94, 2, 0)
	MovementLoopAddLocation(NPC, 22.39, -14.02, -15.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.88, -12.1, -1.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.58, -12.97, -1.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.45, -10.3, -11.79, 2, 0)
end


