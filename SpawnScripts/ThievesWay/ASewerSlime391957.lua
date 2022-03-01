--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime391957.lua
	Script Purpose	:	Waypoint Path for ASewerSlime391957.lua
	Script Author	:	Rylec
	Script Date	:	09-28-2019 10:46:10 
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
	MovementLoopAddLocation(NPC, -181.39, 0.01, 205.25, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -182.59, 0.00, 207.99, 2, 0)
	MovementLoopAddLocation(NPC, -182.62, 0.00, 210.48, 2, math.random(10, 22), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -181.83, 0.03, 204.03, 2, math.random(10, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.04, 0.00, 204.98, 2, 0)
	MovementLoopAddLocation(NPC, -180.85, 0.31, 209.10, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -184.26, 0.15, 210.75, 2, math.random(10, 22), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -180.59, 0.00, 212.51, 2, 0)
	MovementLoopAddLocation(NPC, -179.82, 0.00, 214.09, 2, 0)
	MovementLoopAddLocation(NPC, -178.55, 0.00, 214.84, 2, 0)
	MovementLoopAddLocation(NPC, -178.52, 0.00, 214.72, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -177.70, 0.00, 215.77, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -177.88, 0.05, 214.28, 2, 0)
	MovementLoopAddLocation(NPC, -179.95, 0.08, 211.75, 2, 0)
	MovementLoopAddLocation(NPC, -181.02, 0.05, 207.68, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.21, 0.00, 205.33, 2, 0)
	MovementLoopAddLocation(NPC, -182.51, 0.00, 203.93, 2, math.random(10, 22))
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

