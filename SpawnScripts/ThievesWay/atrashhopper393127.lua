--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393127.lua
	Script Purpose	:	Waypoint Path for atrashhopper393127.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:26:51 
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
	MovementLoopAddLocation(NPC, -181.48, 0.00, 163.02, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -181.51, 0.00, 164.02, 2, 0)
	MovementLoopAddLocation(NPC, -182.94, 0.00, 165.64, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.74, 0.24, 160.80, 2, 0)
	MovementLoopAddLocation(NPC, -184.45, 0.12, 158.19, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -183.48, 0.01, 156.24, 2, 0)
	MovementLoopAddLocation(NPC, -180.36, 0.13, 157.28, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.04, 0.00, 161.96, 2, 0)
	MovementLoopAddLocation(NPC, -183.09, 0.00, 164.09, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.54, 0.00, 167.65, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.53, 0.00, 173.09, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -182.51, 0.00, 173.12, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.12, 0.00, 169.19, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.27, 0.00, 165.04, 2, 0)
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


