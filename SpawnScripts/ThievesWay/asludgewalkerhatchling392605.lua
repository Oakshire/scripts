--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392605.lua
	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392605.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:26:57 
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
	MovementLoopAddLocation(NPC, -183.22, 0.00, 172.62, 2, math.random(12, 18), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -182.01, 0.00, 169.33, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.67, 0.00, 167.10, 2, 0)
	MovementLoopAddLocation(NPC, -182.05, 0.00, 162.58, 2, 0)
	MovementLoopAddLocation(NPC, -181.67, 0.00, 162.06, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.93, 0.00, 162.10, 2, 0)
	MovementLoopAddLocation(NPC, -181.96, 0.00, 164.41, 2, 0)
	MovementLoopAddLocation(NPC, -182.50, 0.00, 166.69, 2, 0)
	MovementLoopAddLocation(NPC, -182.68, 0.00, 168.04, 2, 0)
	MovementLoopAddLocation(NPC, -183.22, 0.00, 165.58, 2, 0)
	MovementLoopAddLocation(NPC, -184.38, 0.33, 160.77, 2, 0)
	MovementLoopAddLocation(NPC, -182.61, 0.00, 156.45, 2, 0)
	MovementLoopAddLocation(NPC, -182.62, 0.00, 156.45, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.02, 0.00, 159.45, 2, 0)
	MovementLoopAddLocation(NPC, -181.58, 0.00, 164.33, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.05, 0.00, 167.04, 2, 0)
	MovementLoopAddLocation(NPC, -181.60, 0.00, 169.34, 2, 0)
	MovementLoopAddLocation(NPC, -181.65, 0.24, 170.62, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.61, 0.00, 172.47, 2, math.random(12, 18), "changegrid_Going_Up")
	MovementLoopAddLocation(NPC, -181.94, 0.23, 170.06, 2, 0, "changegrid_Going_Down")
	MovementLoopAddLocation(NPC, -181.47, 0.00, 168.09, 2, 0)
	MovementLoopAddLocation(NPC, -181.48, 0.00, 168.10, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.46, 0.25, 170.41, 2, 0)
end

--------------------------------------------------------------------------------------
--			NPC Change Grid
--------------------------------------------------------------------------------------

function changegrid_Going_Up(NPC)
	SetGridID(NPC, 667331216)
end

function changegrid_Going_Down(NPC)
	SetGridID(NPC, 3049532766)
end

