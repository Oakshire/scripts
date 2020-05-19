--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393124.lua
	Script Purpose	:	Waypoint Path for atrashhopper393124.lua
	Script Author	:	Rylec
	Script Date	:	10-05-2019 08:25:22 
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
	MovementLoopAddLocation(NPC, -182.18, 0.00, 192.22, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.29, 0.00, 194.80, 2, 0)
	MovementLoopAddLocation(NPC, -183.20, 0.00, 196.80, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -183.24, 0.00, 193.23, 2, 0)
	MovementLoopAddLocation(NPC, -181.73, 0.37, 188.02, 2, 0)
	MovementLoopAddLocation(NPC, -182.43, 0.00, 184.31, 2, math.random(8, 18), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.96, 0.48, 187.30, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -182.51, 0.27, 188.78, 2, 0)
	MovementLoopAddLocation(NPC, -181.94, 0.00, 191.18, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.24, 0.00, 195.59, 2, 0)
	MovementLoopAddLocation(NPC, -182.23, 0.00, 195.63, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -181.84, 0.00, 197.84, 2, 0)
	MovementLoopAddLocation(NPC, -183.65, 0.12, 194.02, 2, 0)
	MovementLoopAddLocation(NPC, -183.24, 0.00, 191.06, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.59, 0.00, 191.75, 2, 0)
	MovementLoopAddLocation(NPC, -182.15, 0.00, 192.65, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -183.17, 0.00, 196.55, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -181.95, 0.00, 190.66, 2, 0)
	MovementLoopAddLocation(NPC, -182.70, 0.37, 186.85, 2, 0)
	MovementLoopAddLocation(NPC, -182.15, 0.00, 184.98, 2, math.random(8, 18), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.25, 0.00, 190.78, 2, math.random(8, 18), "changegrid_Going_Up")
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
