--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392416.lua
 	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392416.lua
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
	MovementLoopAddLocation(NPC, -180.39, 1.34, 45.56, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -179.79, 1.53, 53.47, 2, 0)
	MovementLoopAddLocation(NPC, -180.30, 1.22, 55.35, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -180.05, 1.24, 53.97, 2, 0)
	MovementLoopAddLocation(NPC, -180.15, 1.34, 47.34, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -179.22, 1.58, 52.26, 2, 0)
	MovementLoopAddLocation(NPC, -178.83, 1.22, 54.84, 2, 0)
	MovementLoopAddLocation(NPC, -177.40, 1.22, 57.12, 2, 0)
	MovementLoopAddLocation(NPC, -177.36, 1.22, 57.15, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -174.10, 1.22, 59.94, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -172.37, 1.78, 60.98, 2, math.random(10, 18), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -174.68, 1.26, 59.06, 2, 0)
	MovementLoopAddLocation(NPC, -176.48, 1.25, 57.47, 2, 0)
	MovementLoopAddLocation(NPC, -176.87, 1.29, 56.58, 2, 0)
	MovementLoopAddLocation(NPC, -177.55, 1.35, 54.83, 2, 0)
	MovementLoopAddLocation(NPC, -178.43, 1.65, 52.99, 2, 0)
	MovementLoopAddLocation(NPC, -179.49, 1.34, 49.26, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -179.34, 1.34, 50.66, 2, 0)
	MovementLoopAddLocation(NPC, -178.76, 1.22, 55.03, 2, 0)
	MovementLoopAddLocation(NPC, -179.05, 1.22, 58.22, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -179.36, 1.22, 55.75, 2, 0)
	MovementLoopAddLocation(NPC, -179.83, 1.37, 53.77, 2, 0)
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

