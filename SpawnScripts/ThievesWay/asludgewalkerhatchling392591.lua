--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392591.lua
 	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392591.lua
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
	MovementLoopAddLocation(NPC, -172.23, 1.79, 62.10, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -170.14, 1.22, 61.96, 2, 0)
	MovementLoopAddLocation(NPC, -169.05, 1.22, 61.28, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -170.01, 1.22, 61.13, 2, 0)
	MovementLoopAddLocation(NPC, -171.12, 1.62, 61.19, 2, 0)
	MovementLoopAddLocation(NPC, -172.51, 1.79, 60.16, 2, 0)
	MovementLoopAddLocation(NPC, -174.49, 1.28, 58.94, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -176.32, 1.23, 58.02, 2, 0)
	MovementLoopAddLocation(NPC, -176.39, 1.23, 57.92, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -175.99, 1.22, 59.80, 2, 0)
	MovementLoopAddLocation(NPC, -176.51, 1.26, 61.14, 2, 0)
	MovementLoopAddLocation(NPC, -176.47, 1.27, 61.21, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -174.32, 1.24, 61.84, 2, 0)
	MovementLoopAddLocation(NPC, -172.88, 1.78, 61.84, 2, 0, "changegrid_Going_Up")
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

