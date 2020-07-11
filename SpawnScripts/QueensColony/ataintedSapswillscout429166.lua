--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout429166.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout429166.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:13:55 
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
	MovementLoopAddLocation(NPC, 235.8, -1.5, -118.78, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 251.53, -0.96, -150.88, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 249.6, -0.91, -146.04, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 238.65, -0.85, -141.11, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 239.74, -0.86, -133.91, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 238.58, -0.84, -149.75, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 237.7, -0.85, -134.77, 2, math.random(14, 28))
end


