--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392406.lua
	Script Purpose	:	Waypoint Path for asewagerat392406.lua
	Script Author	:	Rylec
	Script Date	:	10-05-2019 08:24:49 
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
	MovementLoopAddLocation(NPC, -184.71, 0.08, 195.63, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -183.65, 0.03, 192.88, 2, 0)
	MovementLoopAddLocation(NPC, -181.89, 0.00, 191.47, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.47, 0.38, 187.96, 2, 0)
	MovementLoopAddLocation(NPC, -182.12, 0.00, 184.72, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.13, 0.00, 184.70, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -183.72, 0.04, 182.44, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -180.15, 0.00, 182.81, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.27, 0.48, 187.30, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -184.93, 0.10, 191.71, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -183.21, 0.00, 196.16, 2, 0)
	MovementLoopAddLocation(NPC, -182.48, 0.04, 194.23, 2, 0)
	MovementLoopAddLocation(NPC, -183.22, 0.00, 190.98, 2, math.random(10, 18))
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

