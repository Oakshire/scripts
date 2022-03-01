--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393131.lua
	Script Purpose	:	Waypoint Path for atrashhopper393131.lua
	Script Author	:	Rylec
	Script Date	:	09-22-2019 05:03:08 
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
	MovementLoopAddLocation(NPC, -175.49, 1.22, 60.02, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -179.92, 1.22, 55.76, 2, 0)
	MovementLoopAddLocation(NPC, -180.34, 1.22, 54.32, 2, 0)
	MovementLoopAddLocation(NPC, -180.32, 1.22, 54.22, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -180.05, 1.58, 53.15, 2, 0)
	MovementLoopAddLocation(NPC, -179.14, 1.58, 52.87, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -180.32, 1.24, 56.12, 2, 0)
	MovementLoopAddLocation(NPC, -178.32, 1.24, 59.21, 2, 0)
	MovementLoopAddLocation(NPC, -178.16, 1.23, 59.25, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -176.72, 1.22, 60.02, 2, 0)
	MovementLoopAddLocation(NPC, -175.28, 1.22, 61.22, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -179.36, 1.22, 55.06, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -178.82, 1.22, 55.94, 2, 0)
	MovementLoopAddLocation(NPC, -176.59, 1.23, 57.68, 2, 0)
	MovementLoopAddLocation(NPC, -175.44, 1.22, 60.25, 2, 0)
	MovementLoopAddLocation(NPC, -175.34, 1.22, 60.24, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -174.29, 1.22, 60.10, 2, 0)
	MovementLoopAddLocation(NPC, -172.46, 1.78, 60.58, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -169.50, 1.22, 61.64, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -171.63, 1.78, 61.13, 2, 0)
	MovementLoopAddLocation(NPC, -174.75, 1.22, 61.31, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -180.37, 1.30, 57.49, 2, 0)
	MovementLoopAddLocation(NPC, -180.74, 1.30, 56.61, 2, math.random(8, 18))
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
