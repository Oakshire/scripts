--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga391907.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga391907.lua
	Script Author	:	Rylec
	Script Date	:	09-28-2019 10:46:34 
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
	MovementLoopAddLocation(NPC, -172.82, 0.00, 216.65, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -175.14, 0.08, 215.32, 2, 0)
	MovementLoopAddLocation(NPC, -180.56, 0.35, 209.18, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.56, 0.00, 203.06, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.41, 0.24, 209.15, 2, 0)
	MovementLoopAddLocation(NPC, -181.55, 0.00, 211.88, 2, math.random(12, 22), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -182.82, 0.24, 209.24, 2, math.random(12, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.16, 0.02, 213.20, 2, math.random(12, 22), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -181.47, 0.07, 215.05, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -180.58, 0.00, 212.93, 2, 0)
	MovementLoopAddLocation(NPC, -180.60, 0.00, 212.89, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.74, 0.00, 201.60, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.75, 0.00, 206.95, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -179.15, 0.11, 212.20, 2, 0, "changegrid_Going_Up")
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

