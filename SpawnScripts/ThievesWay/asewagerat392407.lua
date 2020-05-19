--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392407.lua
	Script Purpose	:	Waypoint Path for asewagerat392407.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:17:50 
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
	MovementLoopAddLocation(NPC, -182.55, 0.24, 160.51, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -184.25, 0.09, 172.81, 2, math.random(10, 18), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -183.28, 0.00, 168.84, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -183.37, 0.00, 164.54, 2, 0)
	MovementLoopAddLocation(NPC, -182.53, 0.00, 162.14, 2, 0)
	MovementLoopAddLocation(NPC, -182.57, 0.00, 169.51, 2, 0)
	MovementLoopAddLocation(NPC, -182.57, 0.00, 169.49, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.55, 0.00, 166.63, 2, 0)
	MovementLoopAddLocation(NPC, -181.98, 0.00, 164.96, 2, 0)
	MovementLoopAddLocation(NPC, -181.49, 0.00, 162.65, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.64, 0.00, 164.79, 2, 0)
	MovementLoopAddLocation(NPC, -183.41, 0.00, 167.36, 2, 0)
	MovementLoopAddLocation(NPC, -183.11, 0.00, 162.29, 2, 0)
	MovementLoopAddLocation(NPC, -181.69, 0.00, 157.66, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.99, 0.23, 160.08, 2, 0)
	MovementLoopAddLocation(NPC, -181.87, 0.24, 170.24, 2, 0)
	MovementLoopAddLocation(NPC, -181.11, 0.00, 172.24, 2, math.random(10, 18), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -181.84, 0.24, 170.23, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -183.20, 0.00, 163.39, 2, 0)
	MovementLoopAddLocation(NPC, -184.52, 0.13, 158.97, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -180.74, 0.32, 160.60, 2, math.random(10, 18))
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

