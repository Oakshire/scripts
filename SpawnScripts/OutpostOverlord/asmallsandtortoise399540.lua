--[[
    Script Name     :       SpawnScripts/OutpostOverlord/asmallsandtortoise399540.lua
	Script Purpose	:	Waypoint Path for asmallsandtortoise399540.lua
	Script Author	:	Robin
	Script Date	:	10-19-2019 12:42:23 
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
	MovementLoopAddLocation(NPC, -55.17, -8.35, 219.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.67, -8.41, 210.61, 2, 0)
	MovementLoopAddLocation(NPC, -58.46, -9.14, 208.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.14, -8.04, 209.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.18, -8.02, 216.00, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -54.28, -8.63, 207.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.38, -8.17, 207.80, 2, 0)
	MovementLoopAddLocation(NPC, -49.31, -8.41, 208.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.84, -6.82, 209.67, 2, 0)
	MovementLoopAddLocation(NPC, -44.44, -4.90, 212.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.27, -5.30, 214.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -49.24, -8.23, 215.67, 2, 0)
	MovementLoopAddLocation(NPC, -52.03, -8.05, 216.82, 2, 0)
end


