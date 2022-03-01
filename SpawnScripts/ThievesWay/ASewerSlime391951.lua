--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime391951.lua
	Script Purpose	:	Waypoint Path for ASewerSlime391951.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 04:45:57 
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
	MovementLoopAddLocation(NPC, -182.76, 0.00, 104.00, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.99, 0.05, 94.55, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.53, 0.35, 100.34, 2, 0)
	MovementLoopAddLocation(NPC, -181.40, 0.29, 101.96, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -179.95, 0.16, 96.65, 2, 0)
	MovementLoopAddLocation(NPC, -176.44, 0.15, 92.60, 2, 0)
	MovementLoopAddLocation(NPC, -173.77, 0.06, 91.11, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -178.12, 0.05, 91.15, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -180.87, 0.05, 93.99, 2, 0)
	MovementLoopAddLocation(NPC, -181.64, 0.05, 95.81, 2, 0)
	MovementLoopAddLocation(NPC, -178.60, 0.08, 93.68, 2, 0)
	MovementLoopAddLocation(NPC, -175.40, 0.26, 91.92, 2, 0)
	MovementLoopAddLocation(NPC, -172.65, 0.05, 91.00, 2, math.random(10, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -174.06, 0.10, 91.52, 2, 0)
	MovementLoopAddLocation(NPC, -176.72, 0.08, 92.10, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -180.56, 0.05, 94.09, 2, 0)
	MovementLoopAddLocation(NPC, -180.55, 0.05, 94.11, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.12, 0.05, 96.84, 2, 0)
	MovementLoopAddLocation(NPC, -181.93, 0.27, 99.65, 2, 0)
	MovementLoopAddLocation(NPC, -182.21, 0.28, 102.13, 2, 0)
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



