--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586518.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586518.lua
	Script Author	:	Rylec
	Script Date	:	09-22-2019 07:09:04 
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
	MovementLoopAddLocation(NPC, -175.61, 1.27, 58.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -174.18, 1.30, 58.88, 2, 0)
	MovementLoopAddLocation(NPC, -172.81, 1.88, 59.25, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -169.95, 1.22, 60.40, 2, 0)
	MovementLoopAddLocation(NPC, -169.24, 1.22, 61.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -172.24, 1.78, 60.50, 2, 0)
	MovementLoopAddLocation(NPC, -173.74, 1.31, 59.90, 2, math.random(10, 20), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -176.78, 1.33, 56.23, 2, 0)
	MovementLoopAddLocation(NPC, -176.90, 2.01, 53.16, 2, 0)
	MovementLoopAddLocation(NPC, -178.89, 1.34, 50.01, 2, 0)
	-- MovementLoopAddLocation(NPC, -178.86, 1.34, 45.04, 2, 0)
	MovementLoopAddLocation(NPC, -178.80, 1.23, 54.19, 2, 0)
	MovementLoopAddLocation(NPC, -178.05, 1.22, 56.49, 2, 0)
	MovementLoopAddLocation(NPC, -178.05, 1.22, 56.49, 2, 0)
	MovementLoopAddLocation(NPC, -177.82, 1.22, 56.63, 2, math.random(10, 20))
	-- MovementLoopAddLocation(NPC, -177.24, 1.24, 56.89, 2, 0)
	MovementLoopAddLocation(NPC, -172.38, 1.78, 60.93, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -174.97, 1.22, 61.04, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -179.02, 1.30, 59.36, 2, 0)
	MovementLoopAddLocation(NPC, -179.05, 1.29, 59.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -176.27, 1.22, 59.97, 2, 0)
	MovementLoopAddLocation(NPC, -172.55, 1.80, 60.02, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -170.31, 1.22, 61.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -172.34, 1.78, 60.34, 2, 0)
	MovementLoopAddLocation(NPC, -180.22, 1.22, 55.52, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -180.23, 1.22, 55.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -179.15, 1.34, 48.15, 2, 0)
	MovementLoopAddLocation(NPC, -178.58, 1.64, 52.81, 2, 0)
	MovementLoopAddLocation(NPC, -177.28, 1.30, 56.05, 2, 0)
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
