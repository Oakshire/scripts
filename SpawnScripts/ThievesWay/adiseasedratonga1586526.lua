--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586526.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586526.lua
	Script Author	:	Rylec
	Script Date	:	09-28-2019 10:45:51 
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
	MovementLoopAddLocation(NPC, -182.58, 0.04, 212.90, 2, math.random(12, 22))
	-- MovementLoopAddLocation(NPC, -182.49, 0.00, 212.00, 2, 0)
	MovementLoopAddLocation(NPC, -182.40, 0.00, 212.08, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -178.75, 0.00, 214.75, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.92, 0.00, 207.88, 2, math.random(12, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.53, 0.24, 199.33, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.47, 0.00, 201.23, 2, 0)
	MovementLoopAddLocation(NPC, -182.38, 0.00, 201.26, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -180.52, 0.00, 213.99, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -180.72, 0.03, 215.77, 2, 0)
	MovementLoopAddLocation(NPC, -180.81, 0.03, 215.79, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -173.96, 0.00, 217.84, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -180.90, 0.00, 214.18, 2, 0)
end

--------------------------------------------------------------------------------------
--			NPC Change Grid
--------------------------------------------------------------------------------------

function changegrid_Going_Up(NPC)
	SetGridID(NPC, 3053675711)
end

function changegrid_Going_Down(NPC)
	SetGridID(NPC, 1555937977)
end

