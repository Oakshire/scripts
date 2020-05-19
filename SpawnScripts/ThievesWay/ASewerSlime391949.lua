--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime391949.lua
	Script Purpose	:	Waypoint Path for ASewerSlime391949.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:18:01 
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
	MovementLoopAddLocation(NPC, -181.60, 0.00, 163.67, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -182.55, 0.00, 164.07, 2, 0)
	MovementLoopAddLocation(NPC, -182.60, 0.00, 163.98, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.62, 0.00, 156.68, 2, 0)
	MovementLoopAddLocation(NPC, -181.24, 0.03, 159.03, 2, 0)
	MovementLoopAddLocation(NPC, -182.11, 0.24, 170.70, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -182.94, 0.00, 166.69, 2, 0)
	MovementLoopAddLocation(NPC, -183.98, 0.06, 158.44, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -182.87, 0.24, 160.56, 2, 0)
	MovementLoopAddLocation(NPC, -182.50, 0.00, 162.41, 2, 0)
	MovementLoopAddLocation(NPC, -181.75, 0.00, 163.34, 2, 0)
	MovementLoopAddLocation(NPC, -181.78, 0.00, 163.35, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.95, 0.00, 164.05, 2, 0)
	MovementLoopAddLocation(NPC, -182.53, 0.00, 172.24, 2, math.random(10, 22), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -181.94, 0.00, 169.20, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.94, 0.00, 164.57, 2, 0)
end

--------------------------------------------------------------------------------------
--			NPC Change Grid
--------------------------------------------------------------------------------------

function changegrid_Going_Up(NPC)
	SetGridID(NPC, 667331216)
end

function changegrid_Going_Down(NPC)
	SetGridID(NPC, 3049532766)
end


