--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393125.lua
	Script Purpose	:	Waypoint Path for atrashhopper393125.lua
	Script Author	:	Rylec
	Script Date	:	10-05-2019 09:21:50 
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
	MovementLoopAddLocation(NPC, -184.80, 0.18, 197.67, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -183.37, 0.00, 195.04, 2, 0)
	MovementLoopAddLocation(NPC, -183.83, 0.05, 191.20, 2, 0)
	MovementLoopAddLocation(NPC, -182.70, 0.28, 188.51, 2, 0)
	MovementLoopAddLocation(NPC, -182.15, 0.00, 195.73, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.71, 0.00, 191.84, 2, 0)
	MovementLoopAddLocation(NPC, -182.06, 0.39, 186.92, 2, 0)
	MovementLoopAddLocation(NPC, -182.49, 0.00, 183.58, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -183.31, 0.00, 191.70, 2, math.random(8, 18), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -181.70, 0.00, 197.23, 2, 0)
	MovementLoopAddLocation(NPC, -182.76, 0.00, 192.88, 2, 0)
	MovementLoopAddLocation(NPC, -182.00, 0.29, 186.39, 2, 0)
	MovementLoopAddLocation(NPC, -182.67, 0.00, 182.78, 2, math.random(8, 18), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.76, 0.33, 188.17, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -182.05, 0.00, 194.68, 2, 0)
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

