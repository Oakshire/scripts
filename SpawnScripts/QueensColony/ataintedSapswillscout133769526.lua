--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769526.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769526.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:15:58 
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
	MovementLoopAddLocation(NPC, 233.28, -0.82, -168.21, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 241.1, 0.1, -168.08, 2, 0)
	MovementLoopAddLocation(NPC, 245.4, 0.21, -169.71, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 242.93, -0.08, -177.39, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 251.46, -0.99, -176.22, 2, 0)
	MovementLoopAddLocation(NPC, 256.74, -0.97, -177.28, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 256.6, -0.93, -170.79, 2, 0)
	MovementLoopAddLocation(NPC, 254.1, -1.19, -152.77, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 249.04, -0.42, -168.24, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 245.18, 0.21, -166.97, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 231.68, -0.82, -170.21, 2, 0)
	MovementLoopAddLocation(NPC, 228.08, -0.8, -171.78, 2, 0)
	MovementLoopAddLocation(NPC, 222.04, -0.78, -172.18, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 225.05, -0.79, -168.65, 2, 0)
	MovementLoopAddLocation(NPC, 228.85, -0.81, -167.57, 2, 0)
end


