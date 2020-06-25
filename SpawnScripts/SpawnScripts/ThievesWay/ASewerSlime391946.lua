--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime391946.lua
	Script Purpose	:	Waypoint Path for ASewerSlime391946.lua
	Script Author	:	Rylec
	Script Date	:	10-05-2019 08:25:00 
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
	MovementLoopAddLocation(NPC, -183.15, 0.42, 187.84, 2, math.random(10, 22), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -183.04, 0.27, 188.89, 2, 0)
	MovementLoopAddLocation(NPC, -183.21, 0.00, 191.38, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -182.87, 0.11, 189.58, 2, 0)
	MovementLoopAddLocation(NPC, -183.18, 0.00, 183.92, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.50, 0.82, 186.72, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -182.41, 0.01, 191.01, 2, 0)
	MovementLoopAddLocation(NPC, -182.44, 0.00, 192.31, 2, 0)
	MovementLoopAddLocation(NPC, -182.46, 0.00, 192.32, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -182.01, 0.33, 188.15, 2, 0)
	MovementLoopAddLocation(NPC, -181.97, 0.28, 186.38, 2, 0)
	MovementLoopAddLocation(NPC, -182.00, 0.00, 184.16, 2, math.random(10, 22), "changegrid_Going_Down")
end

--------------------------------------------------------------------------------------
--			NPC Change Grid
--------------------------------------------------------------------------------------

function changegrid_Going_Up(NPC)
	SetGridID(NPC, 1555937977)
end

function changegrid_Going_Down(NPC)
	SetGridID(NPC, 667331216)
end


