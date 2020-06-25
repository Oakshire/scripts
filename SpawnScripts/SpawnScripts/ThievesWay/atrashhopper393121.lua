--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393121.lua
	Script Purpose	:	Waypoint Path for atrashhopper393121.lua
	Script Author	:	Rylec
	Script Date	:	09-28-2019 10:46:24 
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
	MovementLoopAddLocation(NPC, -171.72, 0.00, 217.3, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -174.02, 0.02, 216.01, 2, 0)
	MovementLoopAddLocation(NPC, -175.34, 0.24, 214.40, 2, 0)
	MovementLoopAddLocation(NPC, -177.72, 0.19, 213.03, 2, 0)
	MovementLoopAddLocation(NPC, -180.31, 0.39, 209.56, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -180.83, 0.07, 207.45, 2, 0)
	MovementLoopAddLocation(NPC, -182.33, 0.00, 204.23, 2, 0)
	MovementLoopAddLocation(NPC, -182.66, 0.24, 199.51, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.03, 0.00, 201.38, 2, 0)
	MovementLoopAddLocation(NPC, -182.04, 0.00, 205.58, 2, 0)
	MovementLoopAddLocation(NPC, -180.30, 0.39, 209.13, 2, 0)
	MovementLoopAddLocation(NPC, -179.74, 0.09, 211.80, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -176.76, 0.02, 215.30, 2, 0)
	MovementLoopAddLocation(NPC, -175.65, 0.00, 216.78, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -175.95, 0.00, 216.24, 2, 0)
	MovementLoopAddLocation(NPC, -179.76, 0.05, 212.40, 2, 0)
	MovementLoopAddLocation(NPC, -181.65, 0.00, 207.51, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.92, 0.00, 204.71, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.50, 0.00, 202.20, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -184.48, 0.12, 207.20, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -184.26, 0.31, 209.09, 2, 0)
	MovementLoopAddLocation(NPC, -184.69, 0.28, 211.31, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -183.85, 0.22, 212.73, 2, 0)
	MovementLoopAddLocation(NPC, -181.77, 0.01, 213.86, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.51, 0.24, 209.53, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -179.95, 0.12, 210.98, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -177.29, 0.11, 214.05, 2, 0)
	MovementLoopAddLocation(NPC, -172.45, 0.02, 216.01, 2, 0)
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
