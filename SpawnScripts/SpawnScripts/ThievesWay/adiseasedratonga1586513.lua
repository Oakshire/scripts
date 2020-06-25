--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586513.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586513.lua
	Script Author	:	Rylec
	Script Date	:	09-13-2019 06:34:48 
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
	MovementLoopAddLocation(NPC, -168.25, 1.34, 1.01, 2, math.random(12, 22))
	-- MovementLoopAddLocation(NPC, -168.52, 1.34, 0.87, 2, 0)
	-- MovementLoopAddLocation(NPC, -172.16, 1.58, 0.83, 2, 0)
	-- MovementLoopAddLocation(NPC, -174.17, 1.26, 1.17, 2, 0)
	MovementLoopAddLocation(NPC, -175.93, 1.26, 2.05, 2, 0)
	-- MovementLoopAddLocation(NPC, -178.06, 1.26, 3.08, 2, 0)
	-- MovementLoopAddLocation(NPC, -179.07, 1.26, 3.56, 2, 0)
	-- MovementLoopAddLocation(NPC, -179.07, 1.26, 3.57, 2, 0)
	MovementLoopAddLocation(NPC, -179.00, 1.26, 5.96, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -179.10, 1.62, 9.60, 2, 0, "changegrid_Going_Down")
	-- MovementLoopAddLocation(NPC, -178.90, 1.62, 12.18, 2, 0)
	-- MovementLoopAddLocation(NPC, -178.42, 1.95, 14.07, 2, 0)
	MovementLoopAddLocation(NPC, -178.33, 1.79, 14.98, 2, 0)
	-- MovementLoopAddLocation(NPC, -179.14, 1.22, 16.78, 2, 0)
	-- MovementLoopAddLocation(NPC, -179.11, 1.22, 16.75, 2, math.random(3, 5))
	-- MovementLoopAddLocation(NPC, -178.63, 1.49, 16.06, 2, 0)
	-- MovementLoopAddLocation(NPC, -178.45, 1.96, 14.30, 2, 0)
	-- MovementLoopAddLocation(NPC, -179.28, 1.33, 13.37, 2, 0)
	-- MovementLoopAddLocation(NPC, -179.93, 1.22, 14.95, 2, 0)
	-- MovementLoopAddLocation(NPC, -180.06, 1.22, 15.55, 2, 0)
	-- MovementLoopAddLocation(NPC, -180.06, 1.22, 15.60, 2, 0)
	MovementLoopAddLocation(NPC, -180.07, 1.22, 17.84, 2, math.random(12, 22))	
        MovementLoopAddLocation(NPC, -180.05, 1.22, 17.69, 2, math.random(12, 22))
	-- MovementLoopAddLocation(NPC, -179.85, 1.78, 11.40, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -178.93, 1.86, 8.27, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -178.20, 1.70, 6.73, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -176.08, 1.26, 4.40, 2, math.random(8, 15))
	MovementLoopAddLocation(NPC, -178.12, 1.94, 7.46, 2, math.random(12, 22), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -179.64, 1.68, 11.74, 2, 0)
	MovementLoopAddLocation(NPC, -179.82, 1.22, 14.11, 2, math.random(12, 22))
	-- MovementLoopAddLocation(NPC, -179.87, 1.67, 10.34, 2, 0)
	-- MovementLoopAddLocation(NPC, -179.94, 1.84, 7.98, 2, 0)
	MovementLoopAddLocation(NPC, -179.63, 1.26, 4.81, 2, math.random(12, 22), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -179.73, 1.84, 7.82, 2, 0, "changegrid_Going_Down")
	-- MovementLoopAddLocation(NPC, -179.88, 1.82, 11.10, 2, 0)
	MovementLoopAddLocation(NPC, -180.05, 1.22, 15.45, 2, 0)
	-- MovementLoopAddLocation(NPC, -180.00, 1.22, 16.68, 2, 0)
	-- MovementLoopAddLocation(NPC, -180.01, 1.22, 16.64, 2, 0)
	MovementLoopAddLocation(NPC, -179.82, 1.22, 16.02, 2, math.random(12, 22))
	-- MovementLoopAddLocation(NPC, -179.11, 1.26, 14.90, 2, 0)
	-- MovementLoopAddLocation(NPC, -178.99, 1.75, 10.59, 2, 0)
	-- MovementLoopAddLocation(NPC, -177.94, 1.97, 7.89, 2, 0)
	MovementLoopAddLocation(NPC, -177.23, 2.04, 7.02, 2, 0, "changegrid_Going_Up")
	-- MovementLoopAddLocation(NPC, -176.37, 1.38, 4.91, 2, 0)
	MovementLoopAddLocation(NPC, -175.70, 1.33, 3.72, 2, 0)
	-- MovementLoopAddLocation(NPC, -173.42, 1.27, 1.41, 2, 0)
	-- MovementLoopAddLocation(NPC, -172.49, 1.61, 1.10, 2, 0)
	-- MovementLoopAddLocation(NPC, -172.43, 1.58, -0.75, 2, 0)
	-- MovementLoopAddLocation(NPC, -173.83, 1.26, -0.32, 2, 0)
	-- MovementLoopAddLocation(NPC, -175.01, 1.26, 1.06, 2, 0)
	-- MovementLoopAddLocation(NPC, -174.98, 1.26, 1.38, 2, 0)
	-- MovementLoopAddLocation(NPC, -173.50, 1.26, 1.36, 2, 0)
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