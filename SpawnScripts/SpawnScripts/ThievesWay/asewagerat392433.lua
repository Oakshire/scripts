--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392433.lua
	Script Purpose	:	Waypoint Path for asewagerat392433.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 04:45:36 
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
	MovementLoopAddLocation(NPC, -181.58, 0.00, 104.38, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -183.20, 0.04, 98.20, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.75, 0.43, 100.60, 2, 0)
	MovementLoopAddLocation(NPC, -182.85, 0.00, 104.05, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.01, 0.28, 102.08, 2, 0)
	MovementLoopAddLocation(NPC, -181.67, 0.27, 99.72, 2, 0)
	MovementLoopAddLocation(NPC, -179.45, 0.28, 96.98, 2, 0)
	MovementLoopAddLocation(NPC, -178.80, 0.25, 95.55, 2, 0)
	MovementLoopAddLocation(NPC, -177.43, 0.28, 94.44, 2, 0)
	MovementLoopAddLocation(NPC, -176.86, 0.22, 93.44, 2, 0)
	MovementLoopAddLocation(NPC, -173.61, 0.11, 91.65, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -170.66, 0.05, 90.98, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -172.95, 0.06, 91.11, 2, 0)
	MovementLoopAddLocation(NPC, -174.91, 0.39, 92.79, 2, 0)
	MovementLoopAddLocation(NPC, -177.19, 0.14, 93.15, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -179.91, 0.13, 95.97, 2, 0)
	MovementLoopAddLocation(NPC, -181.83, 0.28, 99.91, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -179.78, 0.05, 93.09, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -173.00, 0.05, 90.99, 2, math.random(10, 18), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -175.11, 0.42, 92.91, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -176.95, 0.18, 93.18, 2, 0)
	MovementLoopAddLocation(NPC, -179.71, 0.13, 95.73, 2, 0)
	MovementLoopAddLocation(NPC, -181.85, 0.27, 99.68, 2, 0)
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

