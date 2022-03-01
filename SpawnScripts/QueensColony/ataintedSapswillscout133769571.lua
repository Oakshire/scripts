--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769571.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769571.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:21:07 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 133.74, -0.49, -213.67, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 170.25, -0.58, -212.86, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 154.5, -0.74, -215.76, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 149.21, -0.7, -215.45, 2, 0)
	MovementLoopAddLocation(NPC, 135.18, -0.45, -208.63, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 139.84, -0.47, -208.58, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 139.85, -0.82, -216.53, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 138.2, -0.65, -214.92, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 122.38, -0.84, -217.65, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 133.88, -0.45, -207.59, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 137.22, -0.46, -208.27, 2, 0)
	MovementLoopAddLocation(NPC, 164.03, -0.56, -217.72, 2, math.random(14, 28))
end


