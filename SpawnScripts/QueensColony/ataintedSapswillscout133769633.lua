--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769633.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769633.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:32:11 
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
	MovementLoopAddLocation(NPC, 216.25, -0.76, -146.92, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 195.5, -0.69, -146.81, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 207.86, -0.73, -150.81, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 190.72, -0.67, -150.53, 2, 0)
	MovementLoopAddLocation(NPC, 184.14, 0, -154.19, 2, 0)
	MovementLoopAddLocation(NPC, 172.6, -0.6, -175.25, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 186.68, -0.65, -165.05, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 217.87, -0.77, -148.21, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 199.41, -0.7, -145.68, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 181.12, -0.09, -161.01, 2, math.random(14, 28))
end


