--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570683.lua
	Script Purpose	:	Waypoint Path for akoi570683.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:38:58 
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
	MovementLoopAddLocation(NPC, 779.51, -26.07, -358.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 776.48, -25.91, -358.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 781.17, -26.01, -358.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 783.33, -25.97, -361.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 775.69, -25.92, -357.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 783.45, -26.01, -358.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 777.98, -26.03, -358.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 775.03, -26.14, -356.98, 2, 0)
	MovementLoopAddLocation(NPC, 769.5, -25.97, -353.88, 2, math.random(10, 20))
end


