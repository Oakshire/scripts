--[[
    Script Name     :   SpawnScripts/qeynos_combined02/adragonfly133772586.lua
	Script Purpose	:	Waypoint Path for adragonfly133772586.lua
	Script Author	:	Rylec
	Script Date		:	09-18-2021 11:38:10 
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
	MovementLoopAddLocation(NPC, 626.52, -16.6412, -278.63, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 619.61, -18.12, -286.3, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 621.37, -17.06, -281.71, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 625.27, -19, -286.42, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 621.38, -16.3, -278.76, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 624.47, -19.28, -287.64, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 621.86, -18.16, -283.59, 7, 0)
	MovementLoopAddLocation(NPC, 616.52, -17.5, -278.66, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 625.68, -18.88, -279.47, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 622.22, -18.04, -282.21, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 629.81, -17.37, -281.59, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 613.87, -20.4, -277.78, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 623.72, -17.7, -278.69, 7, 0)
	MovementLoopAddLocation(NPC, 626.56, -15.42, -278.3, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 619.66, -18.42, -286.3, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 621.62, -19.04, -281.8, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 624.96, -18.32, -286.15, 7, math.random(5, 8))
	MovementLoopAddLocation(NPC, 621.43, -17.28, -278.54, 7, math.random(5, 8))
end