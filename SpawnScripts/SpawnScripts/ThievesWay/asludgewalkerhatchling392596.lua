--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392596.lua
	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392596.lua
	Script Author	:	Rylec
	Script Date	:	09-17-2019 08:39:22 
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
	MovementLoopAddLocation(NPC, -181.35, 1.26, 29.43, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -181.66, 1.29, 27.84, 2, 0)
	MovementLoopAddLocation(NPC, -181.59, 1.28, 27.81, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -179.90, 1.22, 29.98, 2, 0)
	MovementLoopAddLocation(NPC, -178.46, 1.22, 35.15, 2, 0)
	MovementLoopAddLocation(NPC, -178.47, 1.22, 35.19, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -176.99, 1.22, 27.76, 2, 0)
	MovementLoopAddLocation(NPC, -176.01, 1.22, 25.81, 2, 0)
	MovementLoopAddLocation(NPC, -176.46, 1.22, 24.59, 2, 0)
	MovementLoopAddLocation(NPC, -176.44, 1.22, 24.49, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -177.39, 1.26, 22.71, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -176.31, 1.22, 29.44, 2, 0)
	MovementLoopAddLocation(NPC, -176.35, 1.22, 29.47, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -178.41, 1.22, 31.27, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -178.40, 1.22, 32.69, 2, 0)
	MovementLoopAddLocation(NPC, -178.45, 1.22, 32.65, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -179.68, 1.22, 31.22, 2, 0)
	MovementLoopAddLocation(NPC, -180.77, 1.22, 30.34, 2, 0)
end
