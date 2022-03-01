--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769537.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769537.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:18:00 
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
	MovementLoopAddLocation(NPC, 244.16, 0.08, -172.19, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 247.89, -0.06, -165.41, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 246.57, -0.4, -148.72, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 243.65, -0.09, -152.46, 2, 0)
	MovementLoopAddLocation(NPC, 220.56, -0.77, -169.35, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 225.67, -0.79, -167.87, 2, 0)
	MovementLoopAddLocation(NPC, 249.02, -0.41, -164.41, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 236.61, -0.51, -165.71, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 225.87, -0.79, -168.39, 2, 0)
	MovementLoopAddLocation(NPC, 219.07, -0.77, -173.47, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 237.85, -0.84, -157.78, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 253.97, -1.2, -168.25, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 252.64, -1.07, -148.57, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 241.66, -0.86, -140.85, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 241.05, -0.46, -149.7, 2, 0)
end


