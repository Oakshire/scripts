--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392588.lua
	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392588.lua
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
	MovementLoopAddLocation(NPC, -179.54, 1.22, 23.35, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -177.52, 1.22, 25.48, 2, 0)
	MovementLoopAddLocation(NPC, -177.46, 1.22, 25.48, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -175.32, 1.22, 25.76, 2, 0)
	MovementLoopAddLocation(NPC, -174.46, 1.25, 26.47, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -174.23, 1.26, 27.87, 2, 0)
	MovementLoopAddLocation(NPC, -175.47, 1.22, 29.62, 2, 0)
	MovementLoopAddLocation(NPC, -176.12, 1.22, 31.48, 2, 0)
	MovementLoopAddLocation(NPC, -176.42, 1.22, 32.69, 2, 0)
	MovementLoopAddLocation(NPC, -177.44, 1.22, 34.12, 2, 0)
	MovementLoopAddLocation(NPC, -177.44, 1.22, 34.07, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -176.82, 1.22, 27.96, 2, 0)
	MovementLoopAddLocation(NPC, -176.06, 1.22, 26.11, 2, 0)
	MovementLoopAddLocation(NPC, -176.53, 1.22, 24.31, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -176.09, 1.22, 26.18, 2, 0)
	MovementLoopAddLocation(NPC, -175.56, 1.22, 31.65, 2, 0)
	MovementLoopAddLocation(NPC, -175.44, 1.24, 32.51, 2, 0)
	MovementLoopAddLocation(NPC, -175.43, 1.24, 32.55, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -177.54, 1.30, 35.76, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -179.42, 1.22, 31.44, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -179.47, 1.22, 33.61, 2, 0)
	MovementLoopAddLocation(NPC, -179.48, 1.22, 33.64, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -179.70, 1.22, 32.18, 2, 0)
	MovementLoopAddLocation(NPC, -180.02, 1.22, 29.88, 2, 0)
	MovementLoopAddLocation(NPC, -181.55, 1.28, 24.70, 2, math.random(12, 18))
end

