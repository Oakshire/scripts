--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout429122.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout429122.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:14:13 
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
	MovementLoopAddLocation(NPC, 230.75, -0.82, -118.52, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 244.48, -0.85, -146.33, 2, 0)
	MovementLoopAddLocation(NPC, 246.67, -0.11, -153.57, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 238.53, -1.04, -125.04, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 224.76, -0.8, -108.69, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 229.78, -0.99, -111.18, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 239.81, -0.95, -114.96, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 240.52, -0.88, -135.95, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 238.69, -1.32, -119.92, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 242.6, -0.87, -137.37, 2, math.random(14, 28))
end


