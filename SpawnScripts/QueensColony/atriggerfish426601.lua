--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426601.lua
	Script Purpose	:	Waypoint Path for atriggerfish426601.lua
	Script Author	:	Rylec
	Script Date	:	10-22-2019 09:52:42 
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
	MovementLoopAddLocation(NPC, 13, -13.47, 278.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.13, -12.25, 273.32, 2, 0)
	MovementLoopAddLocation(NPC, 20.98, -11.7, 269.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.9, -12.38, 273.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.3, -12.76, 265.82, 2, 0)
	MovementLoopAddLocation(NPC, 23.9, -11.45, 255.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 8.92, -11.6, 259.56, 2, 0)
	MovementLoopAddLocation(NPC, 3.01, -11.07, 261.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.68, -11.69, 261.87, 2, 0)
	MovementLoopAddLocation(NPC, 8.78, -11.36, 257.27, 2, 0)
	MovementLoopAddLocation(NPC, 10.79, -11.53, 253.32, 2, 0)
	MovementLoopAddLocation(NPC, 14.99, -11.94, 249.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.38, -11.1, 275.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.94, -13.4, 278.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.04, -12.24, 272.08, 2, 0)
	MovementLoopAddLocation(NPC, 21.72, -10.59, 269.61, 2, math.random(10, 20))
end


