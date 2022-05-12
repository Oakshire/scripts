--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769553.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769553.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:19:22 
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
	MovementLoopAddLocation(NPC, 170.39, -0.58, -214.95, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 149.47, -0.63, -214.72, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 130.69, -0.5, -213.88, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 138.09, -0.82, -217.98, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 134.19, -0.65, -215.03, 2, 0)
	MovementLoopAddLocation(NPC, 125.87, -0.42, -210.65, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 145.02, -0.54, -213.94, 2, 0)
	MovementLoopAddLocation(NPC, 154.37, -0.75, -215.81, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 160, -0.54, -215.5, 2, 0)
	MovementLoopAddLocation(NPC, 170.4, -0.58, -212.78, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 166.11, -0.56, -215.7, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 170.6, -0.58, -211.68, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 139.24, -0.83, -216.63, 2, math.random(14, 28))
end


