--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769548.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769548.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:19:14 
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
	MovementLoopAddLocation(NPC, 167.47, -0.57, -215.99, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 167.37, -0.56, -220.6, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 149.22, -0.64, -214.77, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 138.2, -0.86, -217.62, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 135.77, -0.66, -215.08, 2, 0)
	MovementLoopAddLocation(NPC, 133.91, -0.45, -210.73, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 153.06, -0.53, -213.65, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 167.27, -0.57, -215.67, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 151.3, -0.77, -216.04, 2, 0)
	MovementLoopAddLocation(NPC, 146.5, -0.63, -214.64, 2, math.random(14, 28))
end


