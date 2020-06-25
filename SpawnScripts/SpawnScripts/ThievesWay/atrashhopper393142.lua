--[[
        Script Name     : SpawnScripts/ThievesWay/atrashhopper393142.lua
 	Script Purpose	:	Waypoint Path for atrashhopper393142.lua
	Script Author	:	Rylec
	Script Date	:	09-22-2019 05:03:15 
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
	MovementLoopAddLocation(NPC, -172.56, 1.78, 61.25, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -169.91, 1.22, 61.12, 2, 0)
	MovementLoopAddLocation(NPC, -169.50, 1.28, 59.63, 2, 0)
	MovementLoopAddLocation(NPC, -173.47, 1.72, 58.77, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -175.35, 1.33, 57.62, 2, 0)
	MovementLoopAddLocation(NPC, -176.55, 1.46, 55.43, 2, 0)
	MovementLoopAddLocation(NPC, -177.46, 1.82, 52.98, 2, 0)
	MovementLoopAddLocation(NPC, -178.90, 1.60, 52.12, 2, 0)
	MovementLoopAddLocation(NPC, -179.34, 1.34, 51.48, 2, 0)
	MovementLoopAddLocation(NPC, -179.38, 1.34, 51.28, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -178.93, 1.34, 44.85, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -179.45, 1.26, 58.31, 2, 0)
	MovementLoopAddLocation(NPC, -179.45, 1.28, 58.62, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -177.30, 1.22, 57.29, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -178.00, 1.24, 55.89, 2, 0)
	MovementLoopAddLocation(NPC, -178.18, 1.34, 50.89, 2, 0)
	MovementLoopAddLocation(NPC, -179.07, 1.34, 49.36, 2, 0)
	MovementLoopAddLocation(NPC, -180.17, 1.34, 46.87, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -178.48, 1.34, 50.73, 2, 0)
	MovementLoopAddLocation(NPC, -177.61, 1.79, 52.43, 2, 0)
	MovementLoopAddLocation(NPC, -177.41, 1.29, 56.01, 2, 0)
	MovementLoopAddLocation(NPC, -175.61, 1.28, 57.90, 2, 0)
	MovementLoopAddLocation(NPC, -172.35, 1.86, 59.41, 2, 0, "changegrid_Going_Up")
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


