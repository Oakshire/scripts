--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392585.lua
	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392585.lua
	Script Author	:	Rylec
	Script Date	:	10-05-2019 09:22:13 
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
	MovementLoopAddLocation(NPC, -182.20, 0.00, 182.36, 2, math.random(12, 18), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.59, 0.33, 188.16, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -183.20, 0.00, 190.60, 2, 0)
	MovementLoopAddLocation(NPC, -182.88, 0.00, 195.50, 2, 0)
	MovementLoopAddLocation(NPC, -183.23, 0.00, 196.78, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.15, 0.09, 194.07, 2, 0)
	MovementLoopAddLocation(NPC, -182.15, 0.10, 194.00, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -183.07, 0.28, 189.05, 2, 0)
	MovementLoopAddLocation(NPC, -182.99, 0.37, 188.01, 2, 0)
	MovementLoopAddLocation(NPC, -182.92, 0.00, 191.38, 2, 0)
	MovementLoopAddLocation(NPC, -183.41, 0.01, 194.46, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.17, 0.00, 195.92, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.40, 0.00, 193.22, 2, 0)
	MovementLoopAddLocation(NPC, -181.79, 0.00, 190.73, 2, 0)
	MovementLoopAddLocation(NPC, -182.62, 0.27, 188.65, 2, 0)
	MovementLoopAddLocation(NPC, -182.13, 0.00, 184.50, 2, math.random(12, 18), "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -182.53, 0.48, 187.31, 2, 0, "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -183.31, 0.27, 188.79, 2, 0)
	MovementLoopAddLocation(NPC, -183.27, 0.00, 190.79, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.23, 0.00, 194.85, 2, 0)
	MovementLoopAddLocation(NPC, -182.29, 0.00, 194.97, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.14, 0.45, 187.75, 2, 0)
	MovementLoopAddLocation(NPC, -181.92, 0.29, 186.40, 2, 0)
end

--------------------------------------------------------------------------------------
--			NPC Change Grid
--------------------------------------------------------------------------------------

function changegrid_Going_Up(NPC)
	SetGridID(NPC, 1555937977)
end

function changegrid_Going_Down(NPC)
	SetGridID(NPC, 667331216)
end

