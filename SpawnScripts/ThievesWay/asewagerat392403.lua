--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392403.lua
	Script Purpose	:	Waypoint Path for asewagerat392403.lua
	Script Author	:	Rylec
	Script Date	:	09-28-2019 10:46:51 
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
	MovementLoopAddLocation(NPC, -179.49, 0.01, 213.19, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -180.01, 0.06, 212.02, 2, 0)
	MovementLoopAddLocation(NPC, -180.99, 0.05, 206.99, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.02, 0.31, 204.27, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.05, 0.00, 205.20, 2, 0)
	MovementLoopAddLocation(NPC, -180.00, 0.11, 210.98, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -177.09, 0.10, 214.31, 2, 0)
	MovementLoopAddLocation(NPC, -175.48, 0.00, 216.74, 2, 0)
	MovementLoopAddLocation(NPC, -173.02, 0.00, 217.75, 2, 0)
	MovementLoopAddLocation(NPC, -172.98, 0.00, 217.70, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -173.52, 0.02, 216.00, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -178.51, 0.04, 213.70, 2, 0)
	MovementLoopAddLocation(NPC, -180.14, 0.06, 211.77, 2, 0)
	MovementLoopAddLocation(NPC, -182.66, 0.00, 210.66, 2, 0)
	MovementLoopAddLocation(NPC, -182.65, 0.00, 210.67, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -178.83, 0.00, 215.60, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -180.01, 0.13, 210.82, 2, 0)
	MovementLoopAddLocation(NPC, -182.26, 0.00, 205.61, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.57, 0.00, 201.86, 2, 0)
	MovementLoopAddLocation(NPC, -182.49, 0.00, 206.12, 2, 0)
	MovementLoopAddLocation(NPC, -178.67, 0.00, 214.67, 2, math.random(10, 18), "changegrid_Going_Up")
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
