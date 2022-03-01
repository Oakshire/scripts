--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime391952.lua
	Script Purpose	:	Waypoint Path for ASewerSlime391952.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:26:38 
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
	MovementLoopAddLocation(NPC, -182.44, 0.00, 172.82, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.86, 0.00, 169.18, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.95, 0.00, 166.22, 2, 0)
	MovementLoopAddLocation(NPC, -181.58, 0.00, 165.52, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.93, 0.00, 165.97, 2, 0)
	MovementLoopAddLocation(NPC, -182.65, 0.00, 168.90, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.14, 0.00, 173.23, 2, math.random(10, 22), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -182.33, 0.00, 167.18, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.56, 0.00, 165.88, 2, 0)
	MovementLoopAddLocation(NPC, -182.49, 0.00, 165.65, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -182.20, 0.00, 162.99, 2, 0)
	MovementLoopAddLocation(NPC, -181.88, 0.17, 161.46, 2, 0)
	MovementLoopAddLocation(NPC, -181.65, 0.00, 155.96, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -181.58, 0.24, 160.35, 2, 0)
	MovementLoopAddLocation(NPC, -181.89, 0.00, 162.02, 2, 0)
	MovementLoopAddLocation(NPC, -181.69, 0.00, 163.93, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -182.05, 0.24, 170.63, 2, 0)
	MovementLoopAddLocation(NPC, -182.44, 0.00, 172.86, 2, 0, "changegrid_Going_Up")
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

