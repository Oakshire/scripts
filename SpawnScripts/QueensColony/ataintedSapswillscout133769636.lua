--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769636.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769636.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:32:20 
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
	MovementLoopAddLocation(NPC, 203.59, -0.71, -159.96, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 196.62, -0.69, -146.93, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 178.42, 0.36, -161.01, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 192.26, -0.67, -166.24, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 192.37, -0.68, -134.03, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 191.94, -0.67, -160.54, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 189.71, -0.66, -153.6, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 191.26, -0.67, -159.43, 2, 0)
	MovementLoopAddLocation(NPC, 189.55, -0.66, -174.09, 2, math.random(14, 28))
end


