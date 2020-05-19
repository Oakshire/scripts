--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime391945.lua
	Script Purpose	:	Waypoint Path for ASewerSlime391945.lua
	Script Author	:	Rylec
	Script Date	:	10-05-2019 08:24:57 
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
	MovementLoopAddLocation(NPC, -183.22, 0.00, 184.69, 2, math.random(10, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -183.04, 0.27, 186.09, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -183.06, 0.00, 195.50, 2, 0)
	MovementLoopAddLocation(NPC, -183.09, 0.00, 195.48, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -182.26, 0.00, 194.31, 2, 0)
	MovementLoopAddLocation(NPC, -182.20, 0.00, 193.31, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -183.00, 0.45, 187.76, 2, 0)
	MovementLoopAddLocation(NPC, -183.74, 0.28, 186.34, 2, 0)
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

