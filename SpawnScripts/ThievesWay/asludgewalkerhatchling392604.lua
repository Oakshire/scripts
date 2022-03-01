--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392604.lua
	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392604.lua
	Script Author	:	Rylec
	Script Date	:	10-05-2019 09:22:17 
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
	MovementLoopAddLocation(NPC, -182.23, 0.00, 196.92, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -183.19, 0.00, 192.40, 2, 0)
	MovementLoopAddLocation(NPC, -183.08, 0.28, 189.19, 2, 0)
	MovementLoopAddLocation(NPC, -182.20, 0.00, 184.94, 2, math.random(12, 18), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -180.74, 0.00, 181.80, 2, 0)
	MovementLoopAddLocation(NPC, -180.75, 0.00, 181.82, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -184.38, 0.10, 184.24, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -183.44, 0.28, 186.29, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -182.99, 0.00, 191.52, 2, 0)
	MovementLoopAddLocation(NPC, -183.26, 0.10, 193.76, 2, 0)
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

