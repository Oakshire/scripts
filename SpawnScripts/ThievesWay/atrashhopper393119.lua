--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393119.lua
	Script Purpose	:	Waypoint Path for atrashhopper393119.lua
	Script Author	:	Rylec
	Script Date	:	09-13-2019 02:53:48 
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
	MovementLoopAddLocation(NPC, -175.98, 1.26, 1.38, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -173.76, 1.26, 0.23, 2, 0)
	MovementLoopAddLocation(NPC, -172.10, 1.58, -0.17, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -174.09, 1.26, 0.93, 2, 0)
	MovementLoopAddLocation(NPC, -175.58, 1.30, 3.13, 2, 0)
	MovementLoopAddLocation(NPC, -176.60, 1.35, 4.83, 2, 0)
	MovementLoopAddLocation(NPC, -176.74, 1.42, 5.61, 2, 0)
	MovementLoopAddLocation(NPC, -178.18, 1.93, 7.38, 2, 0)
	MovementLoopAddLocation(NPC, -179.05, 1.63, 9.99, 2, 0)
	MovementLoopAddLocation(NPC, -179.04, 1.62, 9.87, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -178.82, 1.26, 5.99, 2, 0)
	MovementLoopAddLocation(NPC, -179.08, 1.26, 4.63, 2, 0)
	MovementLoopAddLocation(NPC, -179.09, 1.26, 4.68, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -179.17, 1.84, 7.77, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -179.40, 1.82, 11.21, 2, 0)
	MovementLoopAddLocation(NPC, -179.05, 1.52, 13.12, 2, 0)
	MovementLoopAddLocation(NPC, -179.29, 1.22, 15.02, 2, 0)
	MovementLoopAddLocation(NPC, -179.64, 1.22, 15.79, 2, 0)
	-- MovementLoopAddLocation(NPC, -180.07, 1.22, 16.75, 2, 0)
        MovementLoopAddLocation(NPC, -180.08, 1.22, 16.43, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -179.22, 1.22, 14.92, 2, 0)
	MovementLoopAddLocation(NPC, -178.88, 1.62, 9.92, 2, 0)
	MovementLoopAddLocation(NPC, -177.93, 1.98, 7.91, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -176.80, 1.48, 6.33, 2, 0)
	MovementLoopAddLocation(NPC, -176.60, 1.44, 5.55, 2, 0)
	MovementLoopAddLocation(NPC, -174.38, 1.50, 3.84, 2, 0)
	MovementLoopAddLocation(NPC, -172.94, 1.88, 2.93, 2, 0)
	MovementLoopAddLocation(NPC, -171.87, 1.84, 2.60, 2, 0)
	-- MovementLoopAddLocation(NPC, -169.77, 1.34, -0.43, 2, 0)
	MovementLoopAddLocation(NPC, -169.84, 1.34, -0.45, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -171.20, 1.58, 0.21, 2, 0)
	MovementLoopAddLocation(NPC, -172.25, 1.61, 1.17, 2, 0)
	MovementLoopAddLocation(NPC, -173.63, 1.34, 2.17, 2, 0)
	MovementLoopAddLocation(NPC, -174.93, 1.28, 2.22, 2, 0)
	MovementLoopAddLocation(NPC, -175.84, 1.26, 2.69, 2, 0)
	-- MovementLoopAddLocation(NPC, -177.17, 1.26, 3.82, 2, 0)
	MovementLoopAddLocation(NPC, -177.11, 1.26, 3.75, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -173.85, 1.30, 1.94, 2, 0)
	MovementLoopAddLocation(NPC, -172.08, 1.70, 1.87, 2, 0)
	MovementLoopAddLocation(NPC, -171.13, 1.61, 1.09, 2, 0)
	MovementLoopAddLocation(NPC, -169.79, 1.34, 1.01, 2, 0)
	-- MovementLoopAddLocation(NPC, -168.96, 1.34, -0.38, 2, math.random(8, 18))
	-- MovementLoopAddLocation(NPC, -169.02, 1.34, -0.38, 2, 0)
	MovementLoopAddLocation(NPC, -170.14, 1.34, -0.12, 2, 0)
	MovementLoopAddLocation(NPC, -173.94, 1.26, 0.05, 2, 0)
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
