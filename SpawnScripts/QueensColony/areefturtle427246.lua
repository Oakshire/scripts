--[[
    Script Name    : SpawnScripts/QueensColony/areefturtle427246.lua
	Script Purpose	:	Waypoint Path for turtle004_03.lua
	Script Author	:	Rylec
	Script Date		:	10-22-2019 09:52:12 
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
	MovementLoopAddLocation(NPC, 17.05, -12.56, 254.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.3, -11.8, 260.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.77, -12.27, 259.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.74, -12.09, 263.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.65, -12.13, 261.75, 2, 0)
	MovementLoopAddLocation(NPC, 11.51, -11.5, 257, 2, 0)
	MovementLoopAddLocation(NPC, 24.74, -11.68, 259.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.59, -14.46, 280.15, 2, math.random(10, 20))
end

