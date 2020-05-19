--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392420.lua
	Script Purpose	:	Waypoint Path for asewagerat392420.lua
	Script Author	:	Rylec
	Script Date	:	09-28-2019 10:46:56 
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
	MovementLoopAddLocation(NPC, -182.46, 0.03, 212.85, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -180.72, 0.03, 215.65, 2, 0)
	MovementLoopAddLocation(NPC, -180.80, 0.03, 215.67, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -177.88, 0.00, 215.69, 2, 0)
	MovementLoopAddLocation(NPC, -178.63, 0.00, 214.79, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -180.30, 0.00, 213.95, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -178.52, 0.00, 214.98, 2, 0)
	MovementLoopAddLocation(NPC, -178.52, 0.00, 214.98, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -180.68, 0.32, 209.54, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.40, 0.00, 207.89, 2, 0)
	MovementLoopAddLocation(NPC, -181.85, 0.00, 210.71, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -180.70, 0.00, 211.87, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -182.20, 0.00, 207.88, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.68, 0.02, 204.44, 2, 0)
	MovementLoopAddLocation(NPC, -181.51, 0.32, 202.75, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -181.78, 0.00, 207.27, 2, 0)
	MovementLoopAddLocation(NPC, -178.12, 0.06, 213.91, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -176.30, 0.01, 215.68, 2, 0)
	MovementLoopAddLocation(NPC, -175.94, 0.00, 216.62, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -179.49, 0.00, 215.75, 2, 0)
	MovementLoopAddLocation(NPC, -179.50, 0.00, 215.76, 2, math.random(10, 18))
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


