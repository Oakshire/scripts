--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392431.lua
	Script Purpose	:	Waypoint Path for asewagerat392431.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 04:44:29 
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
	MovementLoopAddLocation(NPC, -170.61, 0.00, 90.11, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -171.99, 0.05, 90.20, 2, 0)
	MovementLoopAddLocation(NPC, -173.85, 0.11, 91.68, 2, 0)
	MovementLoopAddLocation(NPC, -175.31, 0.29, 92.16, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -176.76, 0.22, 93.34, 2, 0)
	MovementLoopAddLocation(NPC, -178.23, 0.12, 93.96, 2, 0)
	MovementLoopAddLocation(NPC, -181.60, 0.04, 97.68, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -178.74, 0.05, 92.00, 2, 0)
	MovementLoopAddLocation(NPC, -178.14, 0.05, 91.24, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -179.97, 0.05, 93.35, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -173.60, 0.07, 91.22, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -172.09, 0.05, 91.03, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -172.97, 0.05, 91.03, 2, 0)
	MovementLoopAddLocation(NPC, -181.47, 0.05, 93.33, 2, math.random(10, 18), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -176.87, 0.05, 91.72, 2, 0)
	MovementLoopAddLocation(NPC, -173.65, 0.07, 91.30, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -172.30, 0.05, 90.46, 2, 0)
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



