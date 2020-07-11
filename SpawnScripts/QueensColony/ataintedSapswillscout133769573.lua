--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769573.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769573.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:21:12 
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
	MovementLoopAddLocation(NPC, 148.25, -0.63, -214.64, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 152.94, -0.55, -213.81, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 132.14, -0.44, -209.58, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 168.66, -0.57, -218.64, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 159.74, -0.54, -220.06, 2, 0)
	MovementLoopAddLocation(NPC, 154.45, -0.61, -219.81, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 151.12, -0.79, -218.99, 2, 0)
	MovementLoopAddLocation(NPC, 139.8, -0.73, -219.02, 2, 0)
	MovementLoopAddLocation(NPC, 133.74, -0.77, -217.97, 2, 0)
	MovementLoopAddLocation(NPC, 125.82, -0.85, -217.66, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 150.06, -0.62, -214.56, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 173.62, -0.59, -212.74, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 144.8, -0.49, -211.77, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 124.01, -0.41, -212.86, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 124.19, -0.41, -209.71, 2, math.random(14, 28))
end

