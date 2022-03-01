--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586512.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586512.lua
	Script Author	:	Rylec
	Script Date	:	09-15-2019 05:30:34 
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
	MovementLoopAddLocation(NPC, -177.34, 1.32, 35.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -179.37, 1.22, 30.50, 2, math.random(10, 20))
	-- MovementLoopAddLocation(NPC, -179.26, 1.22, 29.03, 2, 0)
	MovementLoopAddLocation(NPC, -178.44, 1.22, 25.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -176.53, 1.22, 33.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -180.08, 1.22, 36.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -176.33, 1.23, 33.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -174.83, 1.22, 29.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -178.46, 1.24, 36.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -176.17, 1.22, 30.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -174.86, 1.22, 28.52, 2, math.random(10, 20))
	-- MovementLoopAddLocation(NPC, -176.34, 1.29, 34.20, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -175.43, 1.25, 32.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -179.15, 1.22, 30.77, 2, math.random(10, 20))
end
