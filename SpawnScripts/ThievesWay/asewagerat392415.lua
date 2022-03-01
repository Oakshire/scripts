--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392415.lua
	Script Purpose	:	Waypoint Path for asewagerat392415.lua
	Script Author	:	Rylec
	Script Date	:	09-17-2019 08:36:33 
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
	MovementLoopAddLocation(NPC, -180.06, 1.62, 12.28, 2, math.random(10, 18), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -179.81, 1.69, 10.39, 2, 0)
	MovementLoopAddLocation(NPC, -179.20, 1.84, 8.11, 2, 0)
	MovementLoopAddLocation(NPC, -178.81, 1.26, 5.54, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -177.04, 1.26, 1.70, 2, 0)
	MovementLoopAddLocation(NPC, -173.77, 1.26, 0.44, 2, 0)
	MovementLoopAddLocation(NPC, -173.81, 1.26, 0.47, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -176.07, 1.26, 1.92, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -178.12, 1.26, 4.24, 2, 0)
	MovementLoopAddLocation(NPC, -178.82, 1.26, 5.85, 2, 0)
	MovementLoopAddLocation(NPC, -179.93, 1.84, 7.66, 2, math.random(10, 18), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -177.97, 1.29, 5.81, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -176.96, 1.30, 4.49, 2, 0)
	MovementLoopAddLocation(NPC, -175.39, 1.32, 3.29, 2, 0)
	MovementLoopAddLocation(NPC, -173.82, 1.42, 2.77, 2, 0)
	MovementLoopAddLocation(NPC, -172.32, 1.76, 2.24, 2, 0)
	MovementLoopAddLocation(NPC, -171.33, 1.79, 2.40, 2, 0)
	MovementLoopAddLocation(NPC, -169.38, 1.34, 1.75, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -171.27, 1.67, 1.71, 2, 0)
	MovementLoopAddLocation(NPC, -172.61, 1.77, 2.29, 2, 0)
	MovementLoopAddLocation(NPC, -173.89, 1.51, 3.37, 2, 0)
	MovementLoopAddLocation(NPC, -174.80, 1.62, 4.80, 2, 0)
	MovementLoopAddLocation(NPC, -178.45, 1.90, 7.65, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -178.96, 1.63, 10.03, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -179.05, 1.85, 7.82, 2, 0)
	MovementLoopAddLocation(NPC, -179.49, 1.26, 5.33, 2, math.random(10, 18), "changegrid_Going_Up")
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