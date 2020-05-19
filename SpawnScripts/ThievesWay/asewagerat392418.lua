--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392418.lua
	Script Purpose	:	Waypoint Path for asewagerat392418.lua
	Script Author	:	Rylec
	Script Date	:	09-17-2019 07:25:42 
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
	MovementLoopAddLocation(NPC, -168.95, 1.34, 0.58, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -171.18, 1.61, 1.10, 2, 0)
	MovementLoopAddLocation(NPC, -173.72, 1.44, 2.86, 2, 0)
	MovementLoopAddLocation(NPC, -179.54, 1.26, 4.51, 2, 0)
	MovementLoopAddLocation(NPC, -180.70, 1.31, 5.86, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -177.17, 1.26, 1.75, 2, 4)
	MovementLoopAddLocation(NPC, -177.95, 1.29, 5.94, 2, 0)
	MovementLoopAddLocation(NPC, -178.39, 1.63, 9.16, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -179.18, 1.62, 12.24, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -177.87, 1.99, 8.08, 2, 0)
	MovementLoopAddLocation(NPC, -177.80, 2.04, 7.85, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -175.93, 1.39, 4.57, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -173.55, 1.62, 3.57, 2, 0)
	MovementLoopAddLocation(NPC, -172.03, 1.75, 2.18, 2, 0)
	MovementLoopAddLocation(NPC, -169.55, 1.34, 0.53, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -172.92, 1.63, 1.84, 2, 0)
	MovementLoopAddLocation(NPC, -175.02, 1.52, 4.60, 2, 0)
	MovementLoopAddLocation(NPC, -176.72, 1.50, 6.30, 2, 0)
	MovementLoopAddLocation(NPC, -177.44, 2.06, 7.67, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -178.59, 1.64, 10.18, 2, 0)
	MovementLoopAddLocation(NPC, -179.99, 1.60, 12.52, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -179.19, 1.82, 11.13, 2, 0)
	MovementLoopAddLocation(NPC, -177.98, 1.97, 7.82, 2, 0)
	MovementLoopAddLocation(NPC, -176.67, 1.49, 6.04, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -173.42, 1.63, 3.31, 2, 0)
	MovementLoopAddLocation(NPC, -172.44, 1.90, 2.76, 2, 0)
	MovementLoopAddLocation(NPC, -169.62, 1.37, 1.98, 2, 0)
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