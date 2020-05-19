--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393122.lua
	Script Purpose	:	Waypoint Path for atrashhopper393122.lua
	Script Author	:	Rylec
	Script Date	:	09-28-2019 10:46:27 
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

	MovementLoopAddLocation(NPC, -182.59, 0.00, 205.63, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.59, 0.00, 205.50, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -181.81, 0.24, 208.99, 2, 0)
	MovementLoopAddLocation(NPC, -178.68, 0.19, 212.03, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -176.78, 0.00, 216.22, 2, 0)
	MovementLoopAddLocation(NPC, -175.60, 0.00, 216.91, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -174.58, 0.00, 217.70, 2, 0)
	MovementLoopAddLocation(NPC, -173.38, 0.00, 217.76, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -172.47, 0.00, 217.84, 2, 0)
	MovementLoopAddLocation(NPC, -172.56, 0.00, 217.83, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -173.70, 0.00, 217.85, 2, 0)
	MovementLoopAddLocation(NPC, -176.50, 0.00, 216.87, 2, 0)
	MovementLoopAddLocation(NPC, -177.47, 0.00, 216.82, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -179.07, 0.06, 217.03, 2, 0)
	MovementLoopAddLocation(NPC, -180.55, 0.13, 216.53, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -170.28, 0.00, 217.83, 2, 0)
	MovementLoopAddLocation(NPC, -174.49, 0.00, 216.98, 2, 0)
	MovementLoopAddLocation(NPC, -174.50, 0.00, 216.93, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -175.95, 0.08, 215.02, 2, 0)
	MovementLoopAddLocation(NPC, -179.92, 0.09, 211.57, 2, 0)
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


