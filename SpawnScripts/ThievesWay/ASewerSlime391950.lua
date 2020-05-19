--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime391950.lua
	Script Purpose	:	Waypoint Path for ASewerSlime391950.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 04:45:53 
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
	MovementLoopAddLocation(NPC, -183.14, 0.05, 97.35, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -183.10, 0.00, 103.82, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.29, 0.05, 94.32, 2, 0)
	MovementLoopAddLocation(NPC, -177.81, 0.05, 91.62, 2, 0)
	MovementLoopAddLocation(NPC, -177.23, 0.05, 91.26, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -178.19, 0.05, 92.37, 2, 0)
	MovementLoopAddLocation(NPC, -179.99, 0.09, 95.33, 2, 0)
	MovementLoopAddLocation(NPC, -180.82, 0.05, 96.33, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.74, 0.05, 96.57, 2, 0)
	MovementLoopAddLocation(NPC, -181.69, 0.05, 96.45, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.15, 0.05, 94.76, 2, 0)
	MovementLoopAddLocation(NPC, -178.66, 0.05, 92.38, 2, 0)
	MovementLoopAddLocation(NPC, -173.75, 0.05, 90.88, 2, math.random(10, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -177.50, 0.05, 91.75, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -180.66, 0.05, 93.58, 2, 0)
	MovementLoopAddLocation(NPC, -181.62, 0.05, 94.81, 2, math.random(10, 22))
end

--------------------------------------------------------------------------------------
--			NPC Change Grid
--------------------------------------------------------------------------------------

function changegrid_Going_Up(NPC)
	SetGridID(NPC, 3049532766)
end

function changegrid_Going_Down(NPC)
	SetGridID(NPC, 3438300428)
end


