--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392586.lua
	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392586.lua
	Script Author	:	Rylec
	Script Date	:	09-15-2019 07:36:56 
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
	MovementLoopAddLocation(NPC, -180.06, 1.84, 7.60, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -179.93, 1.22, 15.89, 2, math.random(12, 18))
	-- MovementLoopAddLocation(NPC, -180.16, 1.22, 17.04, 2, 0)
	-- MovementLoopAddLocation(NPC, -180.16, 1.22, 17.01, 2, 0)
	MovementLoopAddLocation(NPC, -179.34, 1.22, 14.84, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -179.10, 1.54, 13.09, 2, 0)
	MovementLoopAddLocation(NPC, -178.90, 1.63, 10.02, 2, 0)
	MovementLoopAddLocation(NPC, -177.90, 1.98, 7.70, 2, 0)
	MovementLoopAddLocation(NPC, -177.39, 1.97, 6.95, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -176.66, 1.35, 4.99, 2, 0)
	MovementLoopAddLocation(NPC, -173.48, 1.26, 1.25, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -177.77, 1.30, 5.76, 2, 0)
	MovementLoopAddLocation(NPC, -180.01, 1.67, 6.82, 2, math.random(6, 8))
	-- MovementLoopAddLocation(NPC, -180.01, 1.64, 6.77, 2, 0)
	MovementLoopAddLocation(NPC, -179.98, 1.26, 5.36, 2, math.random(12, 18))
	-- MovementLoopAddLocation(NPC, -180.05, 1.64, 8.88, 2, 0, "changegrid_Going_Down")
	-- MovementLoopAddLocation(NPC, -179.81, 1.84, 7.33, 2, math.random(12, 18))
	-- MovementLoopAddLocation(NPC, -177.75, 1.31, 5.95, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -174.05, 1.27, 1.66, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -172.07, 1.27, -0.66, 2, 0)
        MovementLoopAddLocation(NPC, -172.05, 1.27, -0.66, 2, math.random(12, 18))
        MovementLoopAddLocation(NPC, -176.34, 1.32, 4.20, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -176.90, 1.43, 5.87, 2, 0)
	MovementLoopAddLocation(NPC, -177.50, 2.05, 7.56, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -178.97, 1.64, 9.41, 2, 0)
	MovementLoopAddLocation(NPC, -179.42, 1.82, 11.00, 2, 0)
	MovementLoopAddLocation(NPC, -180.03, 1.60, 12.48, 2, 0)
        MovementLoopAddLocation(NPC, -180.09, 1.22, 14.86, 2, math.random(12, 18))
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