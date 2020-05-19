--[[
        Script Name     :       SpawnScripts/ThievesWay/ASewerSlime392004.lua
	Script Purpose	:	Waypoint Path for ASewerSlime392004.lua
	Script Author	:	Rylec
	Script Date	:	09-17-2019 05:52:08 
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
	MovementLoopAddLocation(NPC, -180.16, 1.84, 7.67, 2, math.random(12, 22), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -177.63, 1.34, 6.24, 2, 0)
	MovementLoopAddLocation(NPC, -176.47, 1.37, 4.92, 2, 0)
	MovementLoopAddLocation(NPC, -173.40, 1.28, 1.53, 2, 0)
	MovementLoopAddLocation(NPC, -172.39, 1.58, 0.54, 2, 0)
	MovementLoopAddLocation(NPC, -176.92, 1.26, 3.38, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -177.97, 1.27, 5.51, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -178.14, 1.94, 7.42, 2, 0)
	MovementLoopAddLocation(NPC, -179.00, 1.63, 10.00, 2, 0)
	MovementLoopAddLocation(NPC, -179.15, 1.26, 14.56, 2, 0)
	MovementLoopAddLocation(NPC, -180.04, 1.22, 17.34, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -179.19, 1.22, 16.22, 2, 0)
	MovementLoopAddLocation(NPC, -178.89, 1.64, 10.20, 2, 0)
	MovementLoopAddLocation(NPC, -177.92, 1.98, 7.90, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -177.28, 2.01, 6.98, 2, 0)
	MovementLoopAddLocation(NPC, -176.73, 1.39, 5.33, 2, 0)
	MovementLoopAddLocation(NPC, -175.26, 1.49, 4.65, 2, 0)
	MovementLoopAddLocation(NPC, -173.89, 1.51, 3.37, 2, 0)
	MovementLoopAddLocation(NPC, -172.47, 1.90, 2.76, 2, 0)
	MovementLoopAddLocation(NPC, -170.06, 1.34, 1.52, 2, 0)
	MovementLoopAddLocation(NPC, -169.01, 1.34, 0.02, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -169.38, 1.34, 0.75, 2, 0)
	MovementLoopAddLocation(NPC, -170.79, 1.56, 1.15, 2, 0)
	MovementLoopAddLocation(NPC, -172.61, 1.85, 2.64, 2, 0)
	MovementLoopAddLocation(NPC, -177.78, 1.26, 3.74, 2, 0)
	MovementLoopAddLocation(NPC, -179.04, 1.26, 4.44, 2, math.random(12, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -178.93, 1.82, 11.01, 2, 0)
	MovementLoopAddLocation(NPC, -178.45, 1.67, 12.74, 2, 0)
	MovementLoopAddLocation(NPC, -178.19, 2.32, 14.51, 2, 0)
	MovementLoopAddLocation(NPC, -179.03, 1.25, 15.42, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -178.10, 2.98, 15.94, 2, 0)
	MovementLoopAddLocation(NPC, -179.28, 1.62, 12.27, 2, 0)
	MovementLoopAddLocation(NPC, -179.42, 1.61, 9.67, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -178.58, 1.82, 7.00, 2, 0)
	MovementLoopAddLocation(NPC, -177.85, 1.26, 4.51, 2, 0)
	MovementLoopAddLocation(NPC, -176.13, 1.26, 2.75, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -178.73, 1.26, 4.91, 2, 0)
	MovementLoopAddLocation(NPC, -179.16, 1.79, 7.05, 2, 0, "changegrid_Going_Down")
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