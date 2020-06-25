--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586524.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586524.lua
	Script Author	:	Rylec
	Script Date	:	09-28-2019 10:45:39 
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
	MovementLoopAddLocation(NPC, -181.64, 0.24, 209.08, 2, math.random(12, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -180.60, 0.01, 211.85, 2, math.random(12, 22), "changegrid_Going_Up")
	-- MovementLoopAddLocation(NPC, -180.04, 0.06, 211.97, 2, 0)
	MovementLoopAddLocation(NPC, -177.65, 0.05, 214.45, 2, 0)
	MovementLoopAddLocation(NPC, -175.89, 0.00, 217.77, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -178.48, 0.07, 213.42, 2, 0)
	MovementLoopAddLocation(NPC, -180.32, 0.06, 211.35, 2, 0)
	MovementLoopAddLocation(NPC, -182.41, 0.00, 205.14, 2, math.random(12, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.09, 0.00, 206.11, 2, 0)
	MovementLoopAddLocation(NPC, -181.20, 0.00, 210.79, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -178.67, 0.02, 216.76, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.42, 0.07, 215.11, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -175.53, 0.00, 216.78, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -180.59, 0.03, 211.31, 2, 0)
	MovementLoopAddLocation(NPC, -182.30, 0.00, 205.45, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.49, 0.00, 200.92, 2, 0)
	MovementLoopAddLocation(NPC, -181.94, 0.00, 205.92, 2, 0)
	MovementLoopAddLocation(NPC, -179.11, 0.12, 212.13, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -172.89, 0.00, 217.61, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -174.62, 0.00, 216.96, 2, 0)
	MovementLoopAddLocation(NPC, -180.32, 0.05, 211.56, 2, 0)
	MovementLoopAddLocation(NPC, -182.41, 0.00, 206.13, 2, math.random(12, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -178.68, 0.00, 216.44, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -178.62, 0.00, 216.46, 2, math.random(12, 22))
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