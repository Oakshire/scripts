--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392603.lua
	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392603.lua
	Script Author	:	Rylec
	Script Date	:	09-28-2019 10:48:30 
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
	MovementLoopAddLocation(NPC, -182.12, 0.24, 209.16, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.54, 0.00, 205.88, 2, 0)
	MovementLoopAddLocation(NPC, -181.94, 0.00, 204.09, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.17, 0.00, 206.76, 2, 0)
	MovementLoopAddLocation(NPC, -181.10, 0.28, 208.80, 2, 0)
	MovementLoopAddLocation(NPC, -179.94, 0.09, 211.41, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -177.31, 0.13, 213.87, 2, 0)
	MovementLoopAddLocation(NPC, -175.77, 0.00, 216.35, 2, 0)
	MovementLoopAddLocation(NPC, -173.50, 0.00, 216.79, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -176.02, 0.02, 215.62, 2, 0)
	MovementLoopAddLocation(NPC, -178.17, 0.07, 213.66, 2, 0)
	MovementLoopAddLocation(NPC, -179.73, 0.00, 213.15, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -180.25, 0.00, 214.62, 2, 0)
	MovementLoopAddLocation(NPC, -179.62, 0.07, 216.81, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -176.39, 0.00, 216.87, 2, 0)
	MovementLoopAddLocation(NPC, -172.71, 0.00, 217.05, 2, 0)
	MovementLoopAddLocation(NPC, -168.85, 0.03, 215.84, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -171.25, 0.00, 216.36, 2, 0)
	MovementLoopAddLocation(NPC, -179.44, 0.00, 215.07, 2, 0)
	MovementLoopAddLocation(NPC, -179.46, 0.00, 215.03, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -179.91, 0.00, 213.88, 2, 0)
	MovementLoopAddLocation(NPC, -180.27, 0.05, 211.72, 2, 0)
	MovementLoopAddLocation(NPC, -181.34, 0.26, 209.36, 2, math.random(12, 18), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.04, 0.00, 207.68, 2, 0)
	MovementLoopAddLocation(NPC, -182.05, 0.00, 205.12, 2, 0)
	MovementLoopAddLocation(NPC, -182.98, 0.00, 201.20, 2, 0)
	MovementLoopAddLocation(NPC, -183.12, 0.00, 207.01, 2, 0)
	MovementLoopAddLocation(NPC, -183.46, 0.24, 209.16, 2, 0)
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

