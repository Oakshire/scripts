--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769546.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769546.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:19:08 
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
	MovementLoopAddLocation(NPC, 170.11, -0.58, -217.18, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 167.88, -0.57, -215.38, 2, 0)
	MovementLoopAddLocation(NPC, 158.73, -0.73, -208.49, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 151.7, -0.7, -208.13, 2, 0)
	MovementLoopAddLocation(NPC, 139.01, -0.47, -210.23, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 172.14, -0.59, -213.5, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 169.01, -0.57, -218.08, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 171.81, -0.59, -211.35, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 174.94, -0.6, -210.41, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 157.5, -0.53, -213.29, 2, math.random(14, 28))
end


