--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime391991.lua
	Script Purpose	:	Waypoint Path for ASewerSlime391991.lua
	Script Author	:	Rylec
	Script Date	:	09-17-2019 05:52:01 
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
	MovementLoopAddLocation(NPC, -173.79, 1.26, 0.79, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -176.14, 1.32, 3.99, 2, 0)
	MovementLoopAddLocation(NPC, -176.90, 1.44, 6.01, 2, 0)
	MovementLoopAddLocation(NPC, -177.31, 2.09, 7.67, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -179.88, 1.64, 11.92, 2, 0)
	MovementLoopAddLocation(NPC, -180.07, 1.60, 6.70, 2, math.random(10, 22), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -179.17, 1.84, 7.73, 2, math.random(10, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -179.81, 1.82, 10.96, 2, 0)
	MovementLoopAddLocation(NPC, -180.57, 1.22, 14.57, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -177.06, 1.41, 5.97, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -174.17, 1.41, 2.93, 2, 0)
	MovementLoopAddLocation(NPC, -171.86, 1.85, 2.62, 2, 0)
	MovementLoopAddLocation(NPC, -169.24, 1.34, 0.99, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -169.72, 1.34, 1.77, 2, 0)
	MovementLoopAddLocation(NPC, -171.40, 1.75, 2.18, 2, 0)
	MovementLoopAddLocation(NPC, -172.52, 2.03, 3.15, 2, 0)
	MovementLoopAddLocation(NPC, -175.38, 1.37, 3.85, 2, 0)
	MovementLoopAddLocation(NPC, -176.69, 1.50, 6.25, 2, 0)
	MovementLoopAddLocation(NPC, -178.91, 1.81, 10.78, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -179.28, 1.22, 15.14, 2, 0)
	MovementLoopAddLocation(NPC, -179.91, 1.22, 17.49, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -179.15, 1.22, 15.83, 2, 0)
	MovementLoopAddLocation(NPC, -178.83, 1.62, 9.94, 2, 0)
	MovementLoopAddLocation(NPC, -177.76, 2.01, 7.98, 2, 0)
	MovementLoopAddLocation(NPC, -176.01, 1.48, 5.29, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -174.41, 1.46, 3.56, 2, 0)
	MovementLoopAddLocation(NPC, -169.94, 1.34, 1.54, 2, 0)
	MovementLoopAddLocation(NPC, -168.87, 1.34, -0.38, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -169.97, 1.34, -0.10, 2, 0)
	MovementLoopAddLocation(NPC, -170.85, 1.54, -0.28, 2, 0)
	MovementLoopAddLocation(NPC, -172.14, 1.58, 0.86, 2, 0)
	MovementLoopAddLocation(NPC, -173.90, 1.26, 0.54, 2, 0)
	MovementLoopAddLocation(NPC, -176.10, 1.26, 2.11, 2, 0)
	MovementLoopAddLocation(NPC, -177.97, 1.30, 6.06, 2, 0)
	MovementLoopAddLocation(NPC, -178.41, 1.89, 7.17, 2, 0)
	MovementLoopAddLocation(NPC, -178.20, 1.26, 4.95, 2, 0)
	MovementLoopAddLocation(NPC, -176.97, 1.26, 3.46, 2, 0)
	MovementLoopAddLocation(NPC, -175.93, 1.26, 1.59, 2, 0)
	MovementLoopAddLocation(NPC, -175.06, 1.26, 0.83, 2, math.random(10, 22))
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