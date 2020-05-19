--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga391865.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga391865.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:27:16 
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
	MovementLoopAddLocation(NPC, -181.57, 0.24, 160.47, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.14, 0.00, 162.44, 2, 0)
	MovementLoopAddLocation(NPC, -184.14, 0.30, 170.58, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.56, 0.24, 170.44, 2, 0)
	MovementLoopAddLocation(NPC, -182.56, 0.24, 170.43, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -183.09, 0.00, 166.25, 2, 0)
	MovementLoopAddLocation(NPC, -182.58, 0.00, 158.75, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.06, 0.00, 162.09, 2, 0)
	MovementLoopAddLocation(NPC, -179.71, 0.17, 172.33, 2, math.random(12, 22), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -180.11, 0.17, 169.26, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.43, 0.01, 166.47, 2, 0)
	MovementLoopAddLocation(NPC, -181.67, 0.00, 156.26, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.52, 0.00, 159.01, 2, 0)
	MovementLoopAddLocation(NPC, -181.57, 0.24, 160.71, 2, 0)
	MovementLoopAddLocation(NPC, -182.00, 0.00, 162.08, 2, 0)
	MovementLoopAddLocation(NPC, -182.04, 0.00, 168.03, 2, 0)
	MovementLoopAddLocation(NPC, -181.51, 0.00, 169.27, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.89, 0.00, 168.50, 2, 0)
	MovementLoopAddLocation(NPC, -181.52, 0.00, 166.49, 2, 0)
	MovementLoopAddLocation(NPC, -181.53, 0.00, 166.48, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.58, 0.00, 164.54, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -181.80, 0.00, 161.79, 2, 0)
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


