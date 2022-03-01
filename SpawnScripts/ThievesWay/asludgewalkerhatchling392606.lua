--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392606.lua
	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392606.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:27:10 
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
	MovementLoopAddLocation(NPC, -181.40, 0.01, 166.59, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.70, 0.00, 168.45, 2, 0)
	MovementLoopAddLocation(NPC, -181.54, 0.00, 169.21, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.56, 0.00, 168.35, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.25, 0.00, 163.60, 2, 0)
	MovementLoopAddLocation(NPC, -181.61, 0.00, 162.65, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.88, 0.24, 160.55, 2, 0)
	MovementLoopAddLocation(NPC, -181.52, 0.00, 158.68, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.54, 0.00, 157.04, 2, 0)
	MovementLoopAddLocation(NPC, -182.54, 0.00, 157.06, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.94, 0.00, 163.96, 2, 0)
	MovementLoopAddLocation(NPC, -182.20, 0.00, 167.58, 2, 0)
	MovementLoopAddLocation(NPC, -181.54, 0.00, 168.45, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.98, 0.00, 167.41, 2, 0)
end
