--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393136.lua
	Script Purpose	:	Waypoint Path for atrashhopper393136.lua
	Script Author	:	Rylec
	Script Date	:	09-28-2019 10:46:18 
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
	MovementLoopAddLocation(NPC, -180.61, 0.01, 211.78, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -181.49, 0.05, 214.71, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -178.70, 0.08, 217.38, 2, 0)
	MovementLoopAddLocation(NPC, -175.47, 0.00, 217.84, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -178.23, 0.06, 213.74, 2, 0)
	MovementLoopAddLocation(NPC, -180.41, 0.05, 211.46, 2, 0)
	MovementLoopAddLocation(NPC, -181.16, 0.28, 209.19, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.36, 0.14, 204.36, 2, 0)
	MovementLoopAddLocation(NPC, -182.34, 0.00, 201.92, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.64, 0.00, 204.98, 2, 0)
	MovementLoopAddLocation(NPC, -181.12, 0.28, 209.11, 2, 0)
	MovementLoopAddLocation(NPC, -178.88, 0.26, 211.33, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -176.47, 0.00, 215.88, 2, 0)
	MovementLoopAddLocation(NPC, -173.69, 0.00, 216.95, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -176.39, 0.23, 213.99, 2, 0)
	MovementLoopAddLocation(NPC, -178.74, 0.13, 212.47, 2, 0)
	MovementLoopAddLocation(NPC, -180.38, 0.38, 209.34, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.61, 0.00, 206.70, 2, 0)
	MovementLoopAddLocation(NPC, -182.59, 0.00, 206.68, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -181.56, 0.24, 208.80, 2, 0)
	MovementLoopAddLocation(NPC, -178.76, 0.19, 212.01, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -174.65, 0.00, 217.95, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -179.29, 0.08, 212.44, 2, 0)
end

--------------------------------------------------------------------------------------
--			NPC Change Grid
--------------------------------------------------------------------------------------

function changegrid_Going_Up(NPC)
	SetGridID(NPC, 3053675711)
end

function changegrid_Going_Down(NPC)
	SetGridID(NPC, 1555937977)
end
