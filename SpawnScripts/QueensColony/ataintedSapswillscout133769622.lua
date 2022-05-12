--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769622.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769622.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:31:11 
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
	MovementLoopAddLocation(NPC, 197.95, -0.69, -168.75, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 192.42, -0.68, -143.11, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 189.21, -0.66, -157.43, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 180.71, -0.63, -164.33, 2, 0)
	MovementLoopAddLocation(NPC, 174.03, -0.6, -172.91, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 168.46, 0.15, -172.65, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 183.83, -0.64, -168.18, 2, 0)
	MovementLoopAddLocation(NPC, 188.24, -0.66, -167.46, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 216.38, -0.76, -148.13, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 203.55, -0.71, -158.6, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 185.4, -0.64, -171.45, 2, math.random(14, 28))
end


