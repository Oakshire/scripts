--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga391869.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga391869.lua
	Script Author	:	Rylec
	Script Date	:	10-05-2019 09:22:32 
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
	MovementLoopAddLocation(NPC, -183.24, 0.27, 186.08, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.28, 0.25, 188.99, 2, 0)
	MovementLoopAddLocation(NPC, -183.23, 0.00, 195.64, 2, 0)
	MovementLoopAddLocation(NPC, -183.25, 0.00, 195.63, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.84, 0.48, 187.42, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.75, 0.27, 188.65, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -183.04, 0.00, 195.52, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.31, 0.00, 195.79, 2, 0)
	MovementLoopAddLocation(NPC, -182.35, 0.00, 195.73, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.16, 0.00, 183.17, 2, math.random(12, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -183.10, 0.00, 196.62, 2, math.random(12, 22), "changegrid_Going_Up")
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


