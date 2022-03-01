--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769611.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769611.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:16:45 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "4") 
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 136.36, -0.46, -192.29, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 134.08, -0.45, -179.84, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 152.18, -0.52, -189.1, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 134.38, -0.44, -185.29, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 152, -0.52, -192.09, 2, 0)
	MovementLoopAddLocation(NPC, 160.71, -0.55, -194.17, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 152.25, -0.52, -192.06, 2, 0)
	MovementLoopAddLocation(NPC, 131.98, -0.44, -184.03, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 144.72, 0.13, -188.34, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 151.67, -0.52, -191.89, 2, 0)
	MovementLoopAddLocation(NPC, 159.13, -0.54, -193.13, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 142.01, -0.48, -190.07, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 154.39, -0.52, -195.06, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 147.13, -0.5, -193.54, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 149.87, -0.51, -191.18, 2, math.random(14, 25))
end