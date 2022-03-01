--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586525.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586525.lua
	Script Author	:	Rylec
	Script Date	:	09-28-2019 10:45:44 
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
	MovementLoopAddLocation(NPC, -179.44, 0.00, 215.77, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.43, 0.25, 209.34, 2, math.random(12, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.49, 0.29, 203.10, 2, 0)
	MovementLoopAddLocation(NPC, -181.53, 0.27, 203.10, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.50, 0.00, 205.85, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.48, 0.04, 214.62, 2, math.random(12, 22), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -180.71, 0.00, 214.63, 2, 0)
	MovementLoopAddLocation(NPC, -180.72, 0.00, 214.60, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.65, 0.00, 208.01, 2, math.random(12, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.64, 0.24, 209.03, 2, 0)
	MovementLoopAddLocation(NPC, -176.40, 0.10, 214.71, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -169.54, 0.00, 216.88, 2, 0)
	MovementLoopAddLocation(NPC, -175.84, 0.08, 215.09, 2, 0)
	MovementLoopAddLocation(NPC, -182.60, 0.00, 210.95, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.85, 0.03, 214.05, 2, 0, "changegrid_Going_Up")
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
