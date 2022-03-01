--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga391888.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga391888.lua
	Script Author	:	Rylec
	Script Date	:	09-13-2019 05:00:36 
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
	MovementLoopAddLocation(NPC, -179.99, 1.22, 14.69, 2, math.random(12, 22))
	-- MovementLoopAddLocation(NPC, -179.98, 1.22, 13.90, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -179.06, 1.62, 12.88, 2, 0)
	MovementLoopAddLocation(NPC, -179.00, 1.68, 11.73, 2, 0)
	MovementLoopAddLocation(NPC, -179.00, 1.62, 9.64, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -178.16, 1.93, 7.92, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -178.01, 1.27, 5.56, 2, 0)
	MovementLoopAddLocation(NPC, -175.86, 1.26, 1.91, 2, 0)
	-- MovementLoopAddLocation(NPC, -175.03, 1.26, 0.49, 2, 0)
	MovementLoopAddLocation(NPC, -175.60, 1.26, 1.86, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -176.05, 1.34, 4.23, 2, 0)
	MovementLoopAddLocation(NPC, -176.99, 1.41, 5.81, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -177.27, 2.10, 7.87, 2, 0)
	MovementLoopAddLocation(NPC, -179.21, 1.63, 10.06, 2, 0)
	MovementLoopAddLocation(NPC, -179.51, 1.73, 11.56, 2, 0)
	MovementLoopAddLocation(NPC, -180.15, 1.22, 13.84, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -179.80, 1.79, 11.36, 2, 0)
	MovementLoopAddLocation(NPC, -178.86, 1.66, 10.29, 2, 0)
	MovementLoopAddLocation(NPC, -177.71, 2.01, 7.94, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -176.67, 1.50, 6.29, 2, 0)
	MovementLoopAddLocation(NPC, -174.71, 1.38, 3.23, 2, 0)
	MovementLoopAddLocation(NPC, -173.05, 1.75, 2.77, 2, 0)
	MovementLoopAddLocation(NPC, -170.91, 1.63, 1.56, 2, math.random(3, 8))
	-- MovementLoopAddLocation(NPC, -169.57, 1.34, 0.71, 2, math.random(8, 15))
	MovementLoopAddLocation(NPC, -171.15, 1.58, 0.54, 2, 0)
	MovementLoopAddLocation(NPC, -174.06, 1.26, 1.09, 2, 0)
	MovementLoopAddLocation(NPC, -175.47, 1.26, 2.29, 2, 0)
	MovementLoopAddLocation(NPC, -176.80, 1.26, 3.58, 2, 0)
	MovementLoopAddLocation(NPC, -177.69, 1.32, 6.03, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -177.94, 1.97, 7.98, 2, 0)
	MovementLoopAddLocation(NPC, -179.09, 1.62, 9.58, 2, 0)
	MovementLoopAddLocation(NPC, -179.51, 1.82, 11.12, 2, 0)
	MovementLoopAddLocation(NPC, -180.04, 1.54, 12.98, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -180.05, 1.59, 12.73, 2, 0)
	MovementLoopAddLocation(NPC, -179.76, 1.69, 10.39, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -179.43, 1.84, 7.79, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -178.70, 1.26, 5.34, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -178.87, 1.42, 6.48, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -179.45, 1.60, 8.95, 2, 0)
	MovementLoopAddLocation(NPC, -179.35, 1.74, 11.54, 2, 0)
	MovementLoopAddLocation(NPC, -180.03, 1.22, 14.85, 2, 0)
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