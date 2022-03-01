--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga391877.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga391877.lua
	Script Author	:	Rylec
	Script Date	:	09-28-2019 10:46:43 
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
	MovementLoopAddLocation(NPC, -180.72, 0.08, 207.53, 2, math.random(12, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -177.97, 0.06, 214.06, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -170.40, 0.00, 217.80, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -169.11, 0.00, 216.51, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -175.36, 0.00, 217.77, 2, 0)
	MovementLoopAddLocation(NPC, -175.35, 0.00, 217.67, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -175.94, 0.00, 216.22, 2, 0)
	MovementLoopAddLocation(NPC, -177.37, 0.03, 214.98, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.42, 0.04, 213.10, 2, 0)
	MovementLoopAddLocation(NPC, -182.42, 0.04, 213.07, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -183.68, 0.26, 209.30, 2, math.random(12, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -174.86, 0.00, 217.60, 2, math.random(12, 22), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -182.54, 0.08, 213.82, 2, math.random(12, 22))
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



