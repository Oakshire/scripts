--[[
        Script Name     :       SpawnScripts/QueensColony/asmallcoastalcrab430814.lua
	Script Purpose	:	Waypoint Path for asmallcoastalcrab430814.lua
	Script Author	:	Rylec
	Script Date	:	10-19-2019 12:41:39 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	--MoveToLocation(NPC, 6.1, -8.58, 250.68)
        waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 6.17, -8.58, 250.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.17, -8.99, 252.80, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.15, -8.71, 244.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.74, -7.83, 246.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.18, -7.92, 245.26, 2, 0)
	MovementLoopAddLocation(NPC, 3.81, -8.52, 244.14, 2, 0)
	MovementLoopAddLocation(NPC, 6.36, -9.63, 242.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.30, -8.44, 248.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.51, -8.46, 247.28, 2, 0)
	MovementLoopAddLocation(NPC, 6.19, -9.55, 242.20, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.21, -9.63, 241.40, 2, 0)
	MovementLoopAddLocation(NPC, 6.35, -9.06, 239.60, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.26, -8.92, 239.46, 2, 0)
	MovementLoopAddLocation(NPC, 7.75, -9.35, 237.56, 2, 0)
	MovementLoopAddLocation(NPC, 9.32, -10.26, 236.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.49, -11.62, 240.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.46, -10.12, 239.78, 2, 0)
	MovementLoopAddLocation(NPC, 7.65, -10.12, 240.92, 2, 0)
	MovementLoopAddLocation(NPC, 6.23, -8.37, 248.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.24, -8.36, 247.72, 2, 0)
	MovementLoopAddLocation(NPC, 5.95, -8.61, 245.61, 2, 0)
	MovementLoopAddLocation(NPC, 5.99, -8.33, 238.20, 2, 0)
	MovementLoopAddLocation(NPC, 6.42, -8.21, 236.25, 2, math.random(10, 20))
end


