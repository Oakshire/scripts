--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392601.lua
	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392601.lua
	Script Author	:	Rylec
	Script Date	:	09-28-2019 10:48:22 
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
	MovementLoopAddLocation(NPC, -172.20, 0.03, 215.87, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -174.03, 0.00, 216.77, 2, 0)
	MovementLoopAddLocation(NPC, -178.55, 0.01, 216.79, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -176.41, 0.00, 217.04, 2, 0)
	MovementLoopAddLocation(NPC, -176.43, 0.00, 217.00, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -176.82, 0.00, 215.65, 2, 0)
	MovementLoopAddLocation(NPC, -179.29, 0.04, 212.97, 2, 0)
	MovementLoopAddLocation(NPC, -181.90, 0.00, 208.01, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.47, 0.00, 205.81, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.93, 0.00, 207.92, 2, 0)
	MovementLoopAddLocation(NPC, -182.12, 0.00, 211.93, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -181.47, 0.00, 212.85, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.82, 0.00, 212.28, 2, 0)
	MovementLoopAddLocation(NPC, -182.54, 0.00, 206.52, 2, math.random(12, 18), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.96, 0.00, 208.13, 2, 0)
	MovementLoopAddLocation(NPC, -179.47, 0.14, 211.62, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -176.68, 0.16, 214.26, 2, 0)
	MovementLoopAddLocation(NPC, -173.40, 0.00, 216.26, 2, 0)
	MovementLoopAddLocation(NPC, -171.68, 0.00, 217.80, 2, 0)
	MovementLoopAddLocation(NPC, -171.66, 0.00, 217.79, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -172.09, 0.00, 217.85, 2, 0)
	MovementLoopAddLocation(NPC, -176.21, 0.22, 214.13, 2, 0)
	MovementLoopAddLocation(NPC, -178.50, 0.14, 212.59, 2, 0)
	MovementLoopAddLocation(NPC, -181.06, 0.29, 209.31, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.40, 0.01, 207.69, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.53, 0.24, 209.09, 2, 0)
	MovementLoopAddLocation(NPC, -178.29, 0.11, 213.07, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -174.45, 0.06, 215.53, 2, 0)
	MovementLoopAddLocation(NPC, -170.55, 0.00, 216.59, 2, 0)
	MovementLoopAddLocation(NPC, -168.50, 0.00, 217.96, 2, 0)
	MovementLoopAddLocation(NPC, -168.48, 0.00, 217.95, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -169.91, 0.00, 216.67, 2, 0)
	MovementLoopAddLocation(NPC, -174.06, 0.04, 215.81, 2, 0)
	MovementLoopAddLocation(NPC, -175.97, 0.24, 214.11, 2, 0)
	MovementLoopAddLocation(NPC, -178.64, 0.14, 212.51, 2, 0)
	MovementLoopAddLocation(NPC, -180.06, 0.22, 210.30, 2, 0)
	MovementLoopAddLocation(NPC, -180.55, 0.09, 207.92, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.28, 0.02, 206.22, 2, 0)
	MovementLoopAddLocation(NPC, -181.12, 0.23, 204.76, 2, 0)
	MovementLoopAddLocation(NPC, -181.06, 0.34, 203.70, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.23, 0.00, 205.26, 2, 0)
	MovementLoopAddLocation(NPC, -180.92, 0.06, 207.72, 2, 0)
	MovementLoopAddLocation(NPC, -179.99, 0.07, 211.72, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -177.57, 0.05, 214.54, 2, 0)
	MovementLoopAddLocation(NPC, -177.15, 0.00, 216.20, 2, 0)
	MovementLoopAddLocation(NPC, -175.73, 0.00, 216.80, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -173.95, 0.00, 217.38, 2, 0)
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
