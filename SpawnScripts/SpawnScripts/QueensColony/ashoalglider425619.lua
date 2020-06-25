--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425619.lua
	Script Purpose	:	Waypoint Path for ashoalglider425619.lua
	Script Author	:	Rylec
	Script Date	:	10-22-2019 09:52:07 
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
	MovementLoopAddLocation(NPC, 21.86, -12.16, 260.77, 2, math.random(10, 20))
	--MovementLoopAddLocation(NPC, 16.83, -13.27, 262.04, 2, math.random(10, 20))
	--MovementLoopAddLocation(NPC, 1.68, -11.75, 272.41, 2, math.random(10, 20))
	--MovementLoopAddLocation(NPC, 12.25, -11.84, 271.54, 2, math.random(10, 20))
	--MovementLoopAddLocation(NPC, 14.93, -14.41, 274.99, 2, math.random(10, 20))
	--MovementLoopAddLocation(NPC, 6.14, -14.58, 280.47, 2, math.random(10, 20))
	--MovementLoopAddLocation(NPC, 8.16, -13.81, 279.81, 2, 0)
	--MovementLoopAddLocation(NPC, 17.99, -11.19, 268.37, 2, math.random(10, 20))
	--MovementLoopAddLocation(NPC, 20.99, -12.13, 261.85, 2, 0)
	--MovementLoopAddLocation(NPC, 21.67, -12.34, 260.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.88, -12.06, 252.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.32, -11.73, 261.02, 2, math.random(10, 20))
end

