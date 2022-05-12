--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769624.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769624.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:31:16 
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
	MovementLoopAddLocation(NPC, 186.73, -0.65, -176.25, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 186.77, -0.66, -143.05, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 188.04, -0.66, -145.75, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 183.81, -0.64, -160.95, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 187.3, -0.65, -156.95, 2, 0)
	MovementLoopAddLocation(NPC, 199.02, -0.7, -146.85, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 185.49, -0.65, -145.9, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 169.84, 0.12, -171.37, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 178.4, 0.36, -160.98, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 214.66, -0.76, -153.29, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 196.63, -0.69, -143.86, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 176.66, 0.64, -159.7, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 175.5, 0.51, -163.73, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 178.86, -0.62, -169.54, 2, 0)
end


