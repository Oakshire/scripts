--[[
	Script Name	:	TWHopper002.lua
	Script Purpose	:	Waypoint Path for TWHopper002.lua
	Script Author	:	Rylec
	Script Date	:	09-13-2019 03:45:48 
	Script Notes	:	<special-instructions>
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
	MovementLoopAddLocation(NPC, -180.12, 1.75, 10.59, 2, 0)
	MovementLoopAddLocation(NPC, -179.62, 1.61, 9.77, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -178.96, 1.86, 8.11, 2, 0)
	MovementLoopAddLocation(NPC, -178.16, 1.89, 7.08, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -177.86, 1.27, 5.18, 2, 0)
	MovementLoopAddLocation(NPC, -177.33, 1.26, 4.15, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -177.48, 1.29, 4.84, 2, 0)
	MovementLoopAddLocation(NPC, -178.76, 1.26, 5.87, 2, 0)
	MovementLoopAddLocation(NPC, -179.18, 1.84, 7.21, 2, 0)
	MovementLoopAddLocation(NPC, -179.37, 1.62, 9.90, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -179.14, 1.76, 11.47, 2, 0)
	MovementLoopAddLocation(NPC, -178.50, 1.58, 13.30, 2, 0)
	MovementLoopAddLocation(NPC, -178.24, 2.25, 14.47, 2, 0)
	MovementLoopAddLocation(NPC, -179.32, 1.22, 15.67, 2, 0)
	MovementLoopAddLocation(NPC, -179.27, 1.22, 15.69, 2, math.random(8, 18))
	-- MovementLoopAddLocation(NPC, -178.25, 1.63, 15.96, 2, 0)
	-- MovementLoopAddLocation(NPC, -178.25, 1.63, 15.96, 2, 0)
	MovementLoopAddLocation(NPC, -179.02, 1.62, 12.18, 2, 0)
	MovementLoopAddLocation(NPC, -179.18, 1.82, 11.08, 2, 0)
	MovementLoopAddLocation(NPC, -178.60, 1.64, 9.59, 2, 0)
	MovementLoopAddLocation(NPC, -177.99, 1.86, 6.94, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -177.79, 1.28, 5.33, 2, 0)
	MovementLoopAddLocation(NPC, -176.47, 1.28, 3.75, 2, 0)
	MovementLoopAddLocation(NPC, -175.20, 1.31, 2.95, 2, 0)
	MovementLoopAddLocation(NPC, -174.58, 1.31, 2.36, 2, 0)
	MovementLoopAddLocation(NPC, -173.99, 1.27, 1.65, 2, 0)
	MovementLoopAddLocation(NPC, -172.31, 1.60, 1.03, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -174.01, 1.26, 1.06, 2, 0)
	MovementLoopAddLocation(NPC, -175.08, 1.27, 2.18, 2, 0)
	MovementLoopAddLocation(NPC, -176.39, 1.26, 3.18, 2, 0)
	MovementLoopAddLocation(NPC, -178.03, 1.26, 3.70, 2, 0)
	MovementLoopAddLocation(NPC, -178.77, 1.26, 4.15, 2, 0)
	MovementLoopAddLocation(NPC, -178.16, 1.26, 4.77, 2, 0)
	MovementLoopAddLocation(NPC, -178.07, 1.26, 4.73, 2, 0)
	MovementLoopAddLocation(NPC, -175.61, 1.35, 3.95, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -174.28, 1.42, 3.15, 2, 0)
	MovementLoopAddLocation(NPC, -173.17, 1.75, 3.02, 2, 0)
	MovementLoopAddLocation(NPC, -172.05, 1.77, 2.26, 2, 0)
	MovementLoopAddLocation(NPC, -170.64, 1.62, 2.15, 2, 0)
	MovementLoopAddLocation(NPC, -169.63, 1.34, 1.01, 2, 0)
	MovementLoopAddLocation(NPC, -168.94, 1.34, -0.37, 2, 0)
	MovementLoopAddLocation(NPC, -169.04, 1.34, -0.35, 2, 0)
	MovementLoopAddLocation(NPC, -170.48, 1.36, -0.17, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -171.75, 1.58, -0.03, 2, 0)
	MovementLoopAddLocation(NPC, -174.08, 1.26, -0.16, 2, 0)
	MovementLoopAddLocation(NPC, -174.88, 1.26, 0.38, 2, 0)
	MovementLoopAddLocation(NPC, -175.40, 1.26, 1.63, 2, 0)
	MovementLoopAddLocation(NPC, -175.84, 1.32, 3.77, 2, 0)
	MovementLoopAddLocation(NPC, -176.66, 1.34, 4.85, 2, 0)
	MovementLoopAddLocation(NPC, -177.05, 1.43, 6.26, 2, 0)
	MovementLoopAddLocation(NPC, -177.86, 1.99, 7.66, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -178.98, 1.70, 8.79, 2, 0)
	MovementLoopAddLocation(NPC, -180.13, 1.79, 10.74, 2, 0)
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


