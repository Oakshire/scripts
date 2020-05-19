--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392610.lua
	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392610.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 04:40:31 
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
	MovementLoopAddLocation(NPC, -182.29, 0.00, 110.46, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.80, 0.00, 113.32, 2, 0)
	MovementLoopAddLocation(NPC, -184.33, 0.32, 116.90, 2, 0)
	MovementLoopAddLocation(NPC, -183.51, 0.02, 120.04, 2, 0)
	MovementLoopAddLocation(NPC, -182.31, 0.00, 121.41, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.99, 0.00, 123.59, 2, 0)
	MovementLoopAddLocation(NPC, -181.57, 0.00, 127.48, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.26, 0.00, 123.37, 2, 0)
	MovementLoopAddLocation(NPC, -181.65, 0.24, 117.21, 2, 0)
	MovementLoopAddLocation(NPC, -182.32, 0.00, 115.36, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.25, 0.00, 115.62, 2, 0)
	MovementLoopAddLocation(NPC, -180.50, 0.36, 117.01, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.33, 0.02, 114.38, 2, 0)
	MovementLoopAddLocation(NPC, -181.32, 0.02, 110.85, 2, 0)
	MovementLoopAddLocation(NPC, -180.38, 0.12, 109.90, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.85, 0.00, 115.35, 2, 0)
	MovementLoopAddLocation(NPC, -183.77, 0.27, 117.05, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.59, 0.00, 114.87, 2, 0)
	MovementLoopAddLocation(NPC, -181.27, 0.02, 113.18, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.51, 0.24, 116.87, 2, 0)
	MovementLoopAddLocation(NPC, -182.07, 0.00, 119.24, 2, 0)
	MovementLoopAddLocation(NPC, -182.12, 0.00, 122.25, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.95, 0.00, 121.76, 2, 0)
	MovementLoopAddLocation(NPC, -181.27, 0.27, 116.94, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.84, 0.00, 115.30, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.20, 0.00, 119.25, 2, 0)
	MovementLoopAddLocation(NPC, -182.30, 0.00, 125.51, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.81, 0.00, 121.30, 2, 0)
	MovementLoopAddLocation(NPC, -182.65, 0.24, 117.26, 2, 0)
	MovementLoopAddLocation(NPC, -182.81, 0.00, 111.72, 2, 0)
end
