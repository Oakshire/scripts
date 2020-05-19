--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392595.lua
 	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392595.lua
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
	MovementLoopAddLocation(NPC, -179.30, 1.26, 58.51, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -179.27, 1.22, 56.08, 2, 0)
	MovementLoopAddLocation(NPC, -179.04, 1.25, 53.96, 2, 0)
	MovementLoopAddLocation(NPC, -179.19, 1.34, 48.83, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -178.14, 1.58, 51.81, 2, 0)
	MovementLoopAddLocation(NPC, -177.25, 1.42, 54.69, 2, 0)
	MovementLoopAddLocation(NPC, -176.17, 1.46, 55.82, 2, 0)
	MovementLoopAddLocation(NPC, -174.83, 1.42, 57.49, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -172.07, 1.87, 59.30, 2, 0)
	MovementLoopAddLocation(NPC, -171.03, 1.57, 60.25, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -172.44, 1.79, 60.13, 2, 0)
	MovementLoopAddLocation(NPC, -172.47, 1.79, 60.15, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -172.24, 1.78, 61.37, 2, 0)
	MovementLoopAddLocation(NPC, -172.27, 1.78, 61.27, 2, math.random(12, 18), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -173.21, 1.73, 59.89, 2, 0)
	MovementLoopAddLocation(NPC, -175.49, 1.29, 57.89, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -174.51, 1.22, 59.58, 2, 0)
	MovementLoopAddLocation(NPC, -172.31, 1.80, 62.23, 2, math.random(12, 18), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -175.34, 1.22, 61.14, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -176.41, 1.22, 60.22, 2, 0)
	MovementLoopAddLocation(NPC, -178.45, 1.24, 59.02, 2, 0)
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

