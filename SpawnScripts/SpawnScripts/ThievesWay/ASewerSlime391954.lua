--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime391954.lua
	Script Purpose	:	Waypoint Path for ASewerSlime391954.lua
	Script Author	:	Rylec
	Script Date	:	09-28-2019 10:46:04 
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
	MovementLoopAddLocation(NPC, -181.82, 0.11, 215.17, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -175.76, 0.01, 215.92, 2, 0)
	MovementLoopAddLocation(NPC, -179.10, 0.00, 214.02, 2, 0)
	MovementLoopAddLocation(NPC, -182.62, 0.07, 213.44, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -182.39, 0.24, 209.30, 2, math.random(10, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -179.94, 0.05, 212.13, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -178.67, 0.00, 214.39, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -178.89, 0.11, 212.46, 2, 0)
	MovementLoopAddLocation(NPC, -182.30, 0.00, 207.83, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.48, 0.24, 199.26, 2, 0)
	MovementLoopAddLocation(NPC, -182.46, 0.24, 199.25, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.89, 0.00, 201.53, 2, 0)
	MovementLoopAddLocation(NPC, -182.05, 0.00, 206.98, 2, 0)
	MovementLoopAddLocation(NPC, -181.31, 0.00, 210.86, 2, math.random(10, 22), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -180.77, 0.00, 214.39, 2, 0)
	MovementLoopAddLocation(NPC, -181.01, 0.05, 215.98, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -178.85, 0.01, 213.88, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -178.68, 0.00, 214.45, 2, math.random(10, 22))
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

