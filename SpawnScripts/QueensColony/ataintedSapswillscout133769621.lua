--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769621.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769621.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:31:07 
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
	MovementLoopAddLocation(NPC, 172.58, 0.11, -168.71, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 179.81, 0.6, -155.82, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 189.86, -0.66, -153.32, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 195.24, -0.69, -154.62, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 192.17, -0.67, -160.98, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 184.09, -0.65, -144.22, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 202.18, -0.71, -155.99, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 182.58, -0.64, -171.33, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 201.98, -0.71, -162.58, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 183.84, -0.64, -172.82, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 197.79, -0.69, -172.68, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 199.28, -0.7, -169.08, 2, math.random(14, 28))
end


