--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392587.lua
	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392587.lua
	Script Author	:	Rylec
	Script Date	:	09-15-2019 07:36:49 
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
	MovementLoopAddLocation(NPC, -178.22, 1.28, 1.69, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -175.52, 1.26, 1.48, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -173.38, 1.26, 1.00, 2, 0)
	MovementLoopAddLocation(NPC, -172.04, 1.59, 0.96, 2, 0)
	MovementLoopAddLocation(NPC, -170.02, 1.34, -0.27, 2, 0)
	MovementLoopAddLocation(NPC, -168.96, 1.34, -0.36, 2, 0)
	MovementLoopAddLocation(NPC, -170.38, 1.34, 1.18, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -171.38, 1.61, 1.09, 2, 0)
	MovementLoopAddLocation(NPC, -173.09, 1.66, 2.54, 2, 0)
	MovementLoopAddLocation(NPC, -175.91, 1.33, 3.97, 2, 0)
	MovementLoopAddLocation(NPC, -177.73, 1.32, 6.11, 2, 0)
	MovementLoopAddLocation(NPC, -178.16, 1.93, 7.51, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -179.90, 1.84, 7.67, 2, 0)
	MovementLoopAddLocation(NPC, -178.68, 1.26, 4.92, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -177.22, 1.26, 2.75, 2, 0)
	MovementLoopAddLocation(NPC, -176.62, 1.26, 0.98, 2, 0)
	MovementLoopAddLocation(NPC, -175.02, 1.31, -0.41, 2, 0)
	MovementLoopAddLocation(NPC, -176.09, 1.26, 2.08, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -176.76, 1.29, 4.17, 2, 0)
	MovementLoopAddLocation(NPC, -177.90, 1.28, 5.51, 2, 0)
	MovementLoopAddLocation(NPC, -178.12, 1.94, 7.57, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -178.83, 1.64, 9.54, 2, 0)
	MovementLoopAddLocation(NPC, -179.17, 1.82, 10.84, 2, 0)
	MovementLoopAddLocation(NPC, -179.86, 1.61, 12.29, 2, 0)
	MovementLoopAddLocation(NPC, -180.08, 1.22, 14.66, 2, 0)
	MovementLoopAddLocation(NPC, -180.21, 1.22, 16.09, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -180.19, 1.22, 18.72, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -179.99, 1.80, 11.34, 2, 0)
	MovementLoopAddLocation(NPC, -179.13, 1.84, 8.09, 2, 0)
	MovementLoopAddLocation(NPC, -178.37, 1.26, 5.49, 2, 0, "changegrid_Going_Up")
	-- MovementLoopAddLocation(NPC, -178.45, 1.30, 2.23, 2, math.random(12, 18))
end

--------------------------------------------------------------------------------------
--			NPC Change Grid
--------------------------------------------------------------------------------------

function changegrid_Going_Up(NPC)
	SetGridID(NPC, 4000206445)
end

function changegrid_Going_Down(NPC)
	SetGridID(NPC, 2981397110)
end