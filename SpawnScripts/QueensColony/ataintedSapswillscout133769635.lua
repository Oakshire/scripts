--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769635.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769635.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:32:18 
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
	MovementLoopAddLocation(NPC, 186.69, -0.66, -135.12, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 191.23, -0.67, -160.74, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 205.71, -0.73, -138.63, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 183.84, -0.64, -172.78, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 196.64, -0.69, -163.5, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 195.22, -0.69, -148.12, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 192.28, -0.67, -173.99, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 195.12, -0.68, -155.76, 2, math.random(14, 28))
end

