--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393132.lua
	Script Purpose	:	Waypoint Path for atrashhopper393132.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 04:46:08 
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
	MovementLoopAddLocation(NPC, -172.97, 0.05, 91.09, 2, math.random(8, 18), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -175.04, 0.39, 92.80, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -177.47, 0.17, 93.64, 2, 0)
	MovementLoopAddLocation(NPC, -180.22, 0.11, 96.30, 2, 0)
	MovementLoopAddLocation(NPC, -181.91, 0.48, 100.98, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -177.74, 0.05, 91.14, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -179.23, 0.05, 92.26, 2, 0)
	MovementLoopAddLocation(NPC, -180.12, 0.12, 96.24, 2, 0)
	MovementLoopAddLocation(NPC, -181.94, 0.27, 99.73, 2, 0)
	MovementLoopAddLocation(NPC, -181.78, 0.00, 104.14, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.81, 0.04, 98.21, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -183.12, 0.29, 100.01, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -180.93, 0.05, 93.09, 2, math.random(8, 18))
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



