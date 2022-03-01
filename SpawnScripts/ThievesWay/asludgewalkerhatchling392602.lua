--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392602.lua
	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392602.lua
	Script Author	:	Rylec
	Script Date	:	09-28-2019 10:48:26 
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
	MovementLoopAddLocation(NPC, -178.58, 0.00, 214.77, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -176.73, 0.03, 215.31, 2, 0)
	MovementLoopAddLocation(NPC, -173.44, 0.00, 216.91, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -178.21, 0.02, 216.98, 2, 0)
	MovementLoopAddLocation(NPC, -179.51, 0.06, 216.84, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -179.71, 0.03, 216.22, 2, 0)
	MovementLoopAddLocation(NPC, -181.62, 0.08, 215.03, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -178.66, 0.00, 216.49, 2, 0)
	MovementLoopAddLocation(NPC, -174.69, 0.00, 216.74, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -171.76, 0.00, 217.37, 2, 0)
	MovementLoopAddLocation(NPC, -169.62, 0.01, 218.07, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -171.79, 0.00, 217.61, 2, 0)
	MovementLoopAddLocation(NPC, -173.13, 0.00, 216.21, 2, 0)
	MovementLoopAddLocation(NPC, -174.71, 0.06, 215.51, 2, 0)
	MovementLoopAddLocation(NPC, -175.58, 0.26, 214.18, 2, 0)
	MovementLoopAddLocation(NPC, -178.00, 0.13, 213.22, 2, 0)
	MovementLoopAddLocation(NPC, -179.40, 0.20, 211.27, 2, 0)
	MovementLoopAddLocation(NPC, -179.87, 0.47, 209.52, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.12, 0.04, 207.34, 2, 0)
	MovementLoopAddLocation(NPC, -181.39, 0.18, 204.02, 2, 0)
	MovementLoopAddLocation(NPC, -182.39, 0.03, 200.31, 2, 0)
	MovementLoopAddLocation(NPC, -182.98, 0.00, 203.01, 2, 0)
	MovementLoopAddLocation(NPC, -182.54, 0.00, 205.41, 2, 0)
	MovementLoopAddLocation(NPC, -182.14, 0.24, 208.92, 2, 0)
	MovementLoopAddLocation(NPC, -180.13, 0.03, 212.33, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -177.73, 0.06, 214.24, 2, 0)
	MovementLoopAddLocation(NPC, -176.43, 0.00, 216.09, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -174.03, 0.01, 216.04, 2, 0)
	MovementLoopAddLocation(NPC, -168.81, 0.00, 217.72, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -172.43, 0.00, 216.77, 2, 0)
	MovementLoopAddLocation(NPC, -174.37, 0.04, 215.80, 2, 0)
end

--------------------------------------------------------------------------------------
--			NPC Change Grid
--------------------------------------------------------------------------------------

function changegrid_Going_Up(NPC)
	SetGridID(NPC, 3053675711)
end

function changegrid_Going_Down(NPC)
	SetGridID(NPC, 1555937977)
end
