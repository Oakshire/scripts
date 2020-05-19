--[[
        Script Name     :       SpawnScripts/ThievesWay/asewerslime392013.lua
 	Script Purpose	:	Waypoint Path for asewerslime392013.lua
	Script Author	:	Rylec
	Script Date	:	09-17-2019 08:39:48 
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
	MovementLoopAddLocation(NPC, -179.69, 1.22, 54.10, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -177.19, 1.22, 58.31, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -175.76, 1.22, 60.30, 2, 0)
	MovementLoopAddLocation(NPC, -175.37, 1.22, 60.82, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -176.15, 1.22, 59.97, 2, 0)
	MovementLoopAddLocation(NPC, -180.21, 1.29, 57.73, 2, 0)
	MovementLoopAddLocation(NPC, -175.96, 1.22, 60.12, 2, 0)
	MovementLoopAddLocation(NPC, -175.21, 1.22, 60.67, 2, 0)
	MovementLoopAddLocation(NPC, -175.29, 1.22, 60.65, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -175.14, 1.22, 59.59, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -175.28, 1.22, 60.46, 2, 0)
	MovementLoopAddLocation(NPC, -175.40, 1.23, 61.25, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -179.30, 1.22, 54.59, 2, 0)
	MovementLoopAddLocation(NPC, -179.17, 1.22, 54.78, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -177.12, 1.22, 58.28, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -175.27, 1.22, 60.87, 2, math.random(10, 22))
	MovementLoopAddLocation(NPC, -176.26, 1.22, 59.89, 2, 0)
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
