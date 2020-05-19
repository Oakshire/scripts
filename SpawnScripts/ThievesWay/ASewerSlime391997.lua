--[[
        Script Name     :       SpawnScripts/ThievesWay/asewerslime391997.lua
 	Script Purpose	:	Waypoint Path for asewerslime391997.lua
	Script Author	:	Rylec
	Script Date	:	09-17-2019 08:39:48 
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
	MovementLoopAddLocation(NPC, -179.21, 1.57, 52.09, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -179.07, 1.22, 54.80, 2, 0)
	MovementLoopAddLocation(NPC, -176.82, 1.22, 59.04, 2, 0)
	MovementLoopAddLocation(NPC, -172.07, 1.81, 62.33, 2, math.random(10, 22), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -174.57, 1.24, 61.71, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -175.73, 1.22, 59.88, 2, 0)
	MovementLoopAddLocation(NPC, -177.24, 1.31, 55.92, 2, 0)
	MovementLoopAddLocation(NPC, -176.85, 1.56, 54.34, 2, 0)
	MovementLoopAddLocation(NPC, -177.28, 1.88, 52.93, 2, 0)
	MovementLoopAddLocation(NPC, -177.81, 1.56, 51.69, 2, 0)
	MovementLoopAddLocation(NPC, -179.27, 1.34, 49.19, 2, 0)
	MovementLoopAddLocation(NPC, -179.00, 1.60, 52.82, 2, 0)
	MovementLoopAddLocation(NPC, -178.17, 1.22, 56.17, 2, 0)
	MovementLoopAddLocation(NPC, -177.59, 1.22, 56.84, 2, 0)
	MovementLoopAddLocation(NPC, -177.66, 1.22, 56.93, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -180.12, 1.36, 53.80, 2, 0)
	MovementLoopAddLocation(NPC, -179.96, 1.58, 52.83, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -179.53, 1.22, 55.16, 2, 0)
	MovementLoopAddLocation(NPC, -176.51, 1.25, 57.57, 2, 0)
	MovementLoopAddLocation(NPC, -174.15, 1.32, 58.72, 2, 0)
	MovementLoopAddLocation(NPC, -169.84, 1.22, 61.18, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -174.68, 1.22, 59.62, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -175.84, 1.22, 58.70, 2, 0)
	MovementLoopAddLocation(NPC, -177.45, 1.23, 56.83, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -175.66, 1.27, 58.09, 2, 0)
	MovementLoopAddLocation(NPC, -173.78, 1.35, 58.89, 2, 0)
	MovementLoopAddLocation(NPC, -172.61, 1.90, 59.16, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -170.97, 1.53, 60.38, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -172.26, 1.79, 60.17, 2, 0)
	MovementLoopAddLocation(NPC, -174.34, 1.22, 59.81, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -178.17, 1.22, 58.18, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -178.83, 1.22, 55.09, 2, 0)
	MovementLoopAddLocation(NPC, -179.17, 1.58, 52.87, 2, 0)
	MovementLoopAddLocation(NPC, -179.70, 1.34, 50.02, 2, 0)
end

--------------------------------------------------------------------------------------
--			NPC Change Grid
--------------------------------------------------------------------------------------

function changegrid_Going_Up(NPC)
	SetGridID(NPC, 3098524280)
end

function changegrid_Going_Down(NPC)
	SetGridID(NPC, 2981397110)
end
