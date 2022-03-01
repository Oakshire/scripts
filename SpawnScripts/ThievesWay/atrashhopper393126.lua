--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393126.lua
	Script Purpose	:	Waypoint Path for atrashhopper393126.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:26:46 
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
	MovementLoopAddLocation(NPC, -183.77, 0.04, 163.59, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.50, 0.00, 162.43, 2, 0)
	MovementLoopAddLocation(NPC, -181.76, 0.00, 158.78, 2, 0)
	MovementLoopAddLocation(NPC, -182.52, 0.00, 157.20, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.09, 0.00, 167.00, 2, 0)
	MovementLoopAddLocation(NPC, -181.52, 0.00, 168.51, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -181.54, 0.00, 167.41, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -181.85, 0.00, 166.31, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.32, 0.00, 163.65, 2, 0)
	MovementLoopAddLocation(NPC, -182.14, 0.24, 160.88, 2, 0)
	MovementLoopAddLocation(NPC, -183.24, 0.00, 157.74, 2, 0)
	MovementLoopAddLocation(NPC, -182.69, 0.00, 156.38, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -183.05, 0.00, 157.66, 2, 0)
	MovementLoopAddLocation(NPC, -184.24, 0.08, 159.00, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.88, 0.00, 162.16, 2, 0)
	MovementLoopAddLocation(NPC, -182.43, 0.00, 172.60, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -182.41, 0.00, 172.60, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.82, 0.00, 165.72, 2, 0, "changegrid_Going_Down")
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

