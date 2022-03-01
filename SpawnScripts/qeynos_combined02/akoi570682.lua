--[[
    Script Name     :   SpawnScripts/qeynos_combined02/akoi570682.lua
	Script Purpose	:	Waypoint Path for akoi570682.lua
	Script Author	:	Rylec
	Script Date		:	02-21-2021 09:38:56 
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
	MovementLoopAddLocation(NPC, 782.74, -26, -359.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 775.47, -25.91, -356.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 774.48, -26.03, -355.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 769.09, -26.03, -352.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 782.66, -26.04, -359.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 779.59, -25.98, -359.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 776.75, -26.01, -356.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 782.68, -25.94, -359.4, 2, math.random(10, 20))
end


