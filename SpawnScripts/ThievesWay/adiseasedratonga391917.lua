--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga391917.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga391917.lua
	Script Author	:	Rylec
	Script Date	:	09-22-2019 07:09:01 
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
	MovementLoopAddLocation(NPC, -178.06, 1.31, 60.48, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -174.97, 1.26, 61.69, 2, 0)
	MovementLoopAddLocation(NPC, -171.90, 1.79, 62.13, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -172.19, 1.79, 62.11, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -174.44, 1.25, 61.82, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -179.22, 1.22, 57.29, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -180.05, 1.58, 53.14, 2, 0)
	MovementLoopAddLocation(NPC, -180.29, 1.34, 49.67, 2, 0)
	MovementLoopAddLocation(NPC, -180.12, 1.27, 57.41, 2, 0)
	MovementLoopAddLocation(NPC, -177.67, 1.25, 59.94, 2, 0)
	MovementLoopAddLocation(NPC, -176.57, 1.22, 60.13, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -178.66, 1.23, 54.58, 2, 0)
	MovementLoopAddLocation(NPC, -179.17, 1.34, 51.07, 2, 0)
	MovementLoopAddLocation(NPC, -179.88, 1.34, 48.30, 2, 0)
	MovementLoopAddLocation(NPC, -179.25, 1.58, 52.19, 2, 0)
	MovementLoopAddLocation(NPC, -178.25, 1.29, 54.21, 2, 0)
	MovementLoopAddLocation(NPC, -177.83, 1.28, 55.50, 2, 0)
	MovementLoopAddLocation(NPC, -175.99, 1.25, 58.07, 2, 0)
	MovementLoopAddLocation(NPC, -173.67, 1.47, 59.27, 2, 0)
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


