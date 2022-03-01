--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392609.lua
	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392609.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 04:40:09 
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
	MovementLoopAddLocation(NPC, -183.56, 0.02, 126.94, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.19, 0.00, 125.05, 2, 0)
	MovementLoopAddLocation(NPC, -182.34, 0.00, 121.47, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.84, 0.00, 118.89, 2, 0)
	MovementLoopAddLocation(NPC, -181.82, 0.00, 111.31, 2, 0)
	MovementLoopAddLocation(NPC, -181.51, 0.00, 109.74, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.16, 0.03, 113.12, 2, 0)
	MovementLoopAddLocation(NPC, -180.33, 0.13, 115.15, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.70, 0.24, 117.17, 2, 0)
	MovementLoopAddLocation(NPC, -181.76, 0.00, 121.65, 2, 0)
	MovementLoopAddLocation(NPC, -183.11, 0.00, 123.93, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.11, 0.00, 121.94, 2, 0)
	MovementLoopAddLocation(NPC, -181.79, 0.00, 115.56, 2, 0)
	MovementLoopAddLocation(NPC, -182.46, 0.00, 112.45, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.20, 0.03, 109.30, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -180.67, 0.08, 114.98, 2, 0)
	MovementLoopAddLocation(NPC, -181.45, 0.25, 116.86, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.94, 0.00, 119.49, 2, 0)
	MovementLoopAddLocation(NPC, -182.00, 0.00, 123.28, 2, 0)
	MovementLoopAddLocation(NPC, -182.29, 0.00, 124.53, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.39, 0.00, 124.38, 2, 0)
	MovementLoopAddLocation(NPC, -179.99, 0.11, 120.48, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.40, 0.01, 122.32, 2, 0)
end

