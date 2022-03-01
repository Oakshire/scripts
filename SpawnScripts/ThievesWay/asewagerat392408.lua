--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392408.lua
	Script Purpose	:	Waypoint Path for asewagerat392408.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:17:55 
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
	MovementLoopAddLocation(NPC, -181.71, 0.00, 165.51, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.96, 0.00, 164.74, 2, 0)
	MovementLoopAddLocation(NPC, -181.53, 0.00, 159.17, 2, 0)
	MovementLoopAddLocation(NPC, -181.56, 0.00, 159.05, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.58, 0.00, 156.38, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.04, 0.24, 170.61, 2, 0)
	MovementLoopAddLocation(NPC, -181.31, 0.00, 172.30, 2, math.random(10, 18), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -183.76, 0.04, 174.48, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.60, 0.24, 170.76, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.82, 0.00, 164.42, 2, 0)
	MovementLoopAddLocation(NPC, -181.01, 0.05, 169.07, 2, 0)
	MovementLoopAddLocation(NPC, -181.92, 0.00, 173.26, 2, math.random(10, 18), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -182.13, 0.00, 169.28, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.41, 0.01, 166.43, 2, 0)
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



