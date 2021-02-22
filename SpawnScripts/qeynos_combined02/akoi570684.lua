--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570684.lua
	Script Purpose	:	Waypoint Path for akoi570684.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:39:00 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 773.79, -26.07, -355.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 777.15, -26.18, -355.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 772.65, -26.02, -358.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 785.42, -26.29, -360.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 777.96, -26.14, -358.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 774.56, -26.08, -354.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 768.44, -26.05, -353.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 783.66, -25.96, -359.34, 2, math.random(10, 20))
end


