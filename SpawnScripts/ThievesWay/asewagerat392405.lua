--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392405.lua
	Script Purpose	:	Waypoint Path for asewagerat392405.lua
	Script Author	:	Rylec
	Script Date	:	10-05-2019 08:24:42 
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
	MovementLoopAddLocation(NPC, -182.14, 0.00, 191.95, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.12, 0.26, 188.85, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.60, 0.31, 186.65, 2, 0)
	MovementLoopAddLocation(NPC, -182.34, 0.00, 190.71, 2, 0)
	MovementLoopAddLocation(NPC, -183.11, 0.00, 191.73, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -183.23, 0.28, 188.58, 2, 0)
	MovementLoopAddLocation(NPC, -182.30, 0.00, 184.38, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.93, 0.00, 191.35, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -182.41, 0.10, 193.89, 2, 0)
	MovementLoopAddLocation(NPC, -182.28, 0.00, 197.35, 2, 0)
	MovementLoopAddLocation(NPC, -182.08, 0.00, 194.62, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -183.11, 0.00, 191.36, 2, 0)
	MovementLoopAddLocation(NPC, -182.58, 0.45, 187.75, 2, 0)
	MovementLoopAddLocation(NPC, -183.59, 0.02, 183.60, 2, math.random(10, 18), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.46, 0.42, 187.02, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -182.75, 0.00, 191.13, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -184.51, 0.10, 191.92, 2, 0)
	MovementLoopAddLocation(NPC, -185.07, 0.10, 192.04, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -183.82, 0.05, 192.64, 2, 0)
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
