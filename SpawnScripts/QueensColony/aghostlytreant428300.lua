--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlytreant428300.lua
	Script Purpose	:	Waypoint Path for aghostlytreant428300.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:48:07 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 144.81, 1.48, -57.88, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 172.87, 1.18, -39.35, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 171.3, 0.37, -61.1, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 159.7, 1.43, -59.68, 1.5, 0)
	MovementLoopAddLocation(NPC, 135.69, 1.52, -62.08, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 158.47, 1.23, -50.75, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 164.1, 1.21, -47.82, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 159.94, 1.22, -47.77, 1.5, 0)
	MovementLoopAddLocation(NPC, 150.36, 0.82, -45.16, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 174.66, 1.18, -56.59, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 167.91, 0.63, -60.29, 1.5, 0)
	MovementLoopAddLocation(NPC, 156.01, 0.36, -72.83, 1.5, 0)
	MovementLoopAddLocation(NPC, 154.47, 0.36, -81.56, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 152.55, 0.5, -75.43, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 155.52, 0.44, -72.8, 1.5, 0)
	MovementLoopAddLocation(NPC, 156.48, 0.65, -70.41, 1.5, 0)
	MovementLoopAddLocation(NPC, 156.82, 1.41, -63.56, 1.5, 0)
	MovementLoopAddLocation(NPC, 164.06, 1.21, -47.71, 1.5, math.random(14, 30))
end


