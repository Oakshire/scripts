--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler429803.lua
	Script Purpose	:	Waypoint Path for aMorakmangler429803.lua
	Script Author	:	Rylec
	Script Date	:	07-28-2020 10:33:33 
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
	MovementLoopAddLocation(NPC, -87.72, 4.79, -161.81, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -91.67, 4.37, -157.5, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -86.61, 5.07, -162.13, 2, 0)
	MovementLoopAddLocation(NPC, -83.51, 5.31, -162.23, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -86.71, 5.04, -161.85, 2, 0)
	MovementLoopAddLocation(NPC, -91.75, 4.37, -158.68, 2, 0)
	MovementLoopAddLocation(NPC, -94.73, 4.37, -152.94, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -90.48, 4.36, -151.27, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -87.98, 4.35, -152.65, 2, 0)
	MovementLoopAddLocation(NPC, -86.8, 4.35, -153.92, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -91.77, 4.37, -160.45, 2, 0)
	MovementLoopAddLocation(NPC, -97.5, 4.39, -162.82, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -90.42, 4.37, -158.98, 2, 0)
end



