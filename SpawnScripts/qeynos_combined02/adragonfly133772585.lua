--[[
    Script Name     :   SpawnScripts/qeynos_combined02/adragonfly133772585.lua
	Script Purpose	:	Waypoint Path for adragonfly133772585.lua
	Script Author	:	Rylec
	Script Date		:	09-18-2021 11:38:08 
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
	MovementLoopAddLocation(NPC, 606.66, -21.0161, -296.16, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 611.57, -19.74, -294.67, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 608.59, -17.71, -289.91, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 607.43, -20.8, -294.47, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 610.4, -22.5, -293.03, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 608.38, -22.53, -291.46, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 606, -20.5, -298.99, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 607.22, -18.74, -293.35, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 606.31, -17.73, -291.27, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 608.11, -20.72, -294.49, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 603.29, -21.1, -291.16, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 610.53, -19.62, -301.92, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 602.2, -18.14, -297.08, 7, math.random(5, 8))
end