--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392404.lua
	Script Purpose	:	Waypoint Path for asewagerat392404.lua
	Script Author	:	Rylec
	Script Date	:	09-28-2019 10:46:59 
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
	MovementLoopAddLocation(NPC, -181.54, 0.24, 209.21, 2, math.random(10, 18), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.04, 0.01, 213.34, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -181.56, 0.05, 214.68, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -178.30, 0.09, 217.65, 2, 0)
	MovementLoopAddLocation(NPC, -175.81, 0.00, 217.68, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -170.88, 0.00, 217.22, 2, 0)
	MovementLoopAddLocation(NPC, -169.17, 0.00, 216.16, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -170.51, 0.00, 216.84, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -177.36, 0.00, 216.71, 2, 0)
	MovementLoopAddLocation(NPC, -179.58, 0.00, 215.82, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -179.66, 0.00, 213.80, 2, 0)
	MovementLoopAddLocation(NPC, -181.72, 0.24, 209.49, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.47, 0.00, 207.04, 2, 0)
	MovementLoopAddLocation(NPC, -181.50, 0.00, 207.00, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.96, 0.00, 206.03, 2, 0)
	MovementLoopAddLocation(NPC, -183.05, 0.00, 202.19, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.68, 0.00, 205.07, 2, 0)
	MovementLoopAddLocation(NPC, -180.25, 0.15, 208.05, 2, 0)
	MovementLoopAddLocation(NPC, -180.53, 0.01, 211.98, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -178.87, 0.00, 214.17, 2, 0)
	MovementLoopAddLocation(NPC, -175.89, 0.08, 215.14, 2, 0)
	MovementLoopAddLocation(NPC, -174.73, 0.00, 216.27, 2, 0)
	MovementLoopAddLocation(NPC, -173.57, 0.00, 216.15, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -176.67, 0.02, 215.36, 2, 0)
	MovementLoopAddLocation(NPC, -177.67, 0.06, 214.36, 2, 0)
	MovementLoopAddLocation(NPC, -178.35, 0.26, 211.89, 2, math.random(10, 18))
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

