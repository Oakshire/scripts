--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout429114.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout429114.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:15:55 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    SpawnSet(NPC, "hp", 110)
    SpawnSet(NPC, "power", 55)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 235.25, -0.83, -156.41, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 233.04, -0.82, -152.54, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 240.6, -0.85, -144.77, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 238.84, -0.85, -147.15, 2, 0)
	MovementLoopAddLocation(NPC, 220.51, -0.77, -167.23, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 227.45, -0.8, -168.15, 2, 0)
	MovementLoopAddLocation(NPC, 256.4, -1.04, -178.6, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 249.12, -0.42, -157.95, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 231.88, -0.81, -159.19, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 241.5, -0.85, -184.08, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 235.45, -0.63, -166.6, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 237.83, -0.84, -160.78, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 228.42, -0.8, -171.88, 2, 0)
	MovementLoopAddLocation(NPC, 216.91, -0.76, -181.19, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 240.22, -0.28, -172.09, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 239.52, -0.02, -166.97, 2, 0)
end
