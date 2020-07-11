--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769547.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769547.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:19:10 
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
	MovementLoopAddLocation(NPC, 154.88, -0.59, -214.24, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 174.59, -0.6, -211.36, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 144.51, -0.91, -217.33, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 171.7, -0.59, -210.18, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 173.32, -0.59, -207.16, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 151.81, -0.6, -214.41, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 174.57, -0.59, -219.35, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 145.78, -0.51, -210.18, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 160.21, -0.54, -212.33, 2, math.random(14, 28))
end


