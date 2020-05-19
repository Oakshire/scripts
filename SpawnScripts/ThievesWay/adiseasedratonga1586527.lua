--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586527.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586527.lua
	Script Author	:	Rylec
	Script Date	:	10-05-2019 09:22:56 
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
	MovementLoopAddLocation(NPC, -183.30, 0.00, 184.75, 2, math.random(12, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -183.02, 0.39, 186.92, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -183.17, 0.00, 194.50, 2, 0)
	MovementLoopAddLocation(NPC, -183.14, 0.10, 193.88, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.04, 0.00, 183.84, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -183.18, 0.00, 194.97, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -183.17, 0.00, 194.93, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.27, 0.00, 192.04, 2, 0)
	MovementLoopAddLocation(NPC, -182.23, 0.00, 195.62, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -183.13, 0.27, 186.16, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.15, 0.25, 189.00, 2, 0)
	MovementLoopAddLocation(NPC, -182.15, 0.26, 188.98, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.19, 0.29, 186.44, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -182.07, 0.48, 187.24, 2, 0)
	MovementLoopAddLocation(NPC, -183.28, 0.10, 193.95, 2, 0)
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


