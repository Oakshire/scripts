--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770042.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770042.lua
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
	MovementLoopAddLocation(NPC, -84.87, 4.35, -145.81, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -87.76, 4.35, -154.65, 2, 0)
	MovementLoopAddLocation(NPC, -92.69, 4.37, -162.58, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -87.96, 4.35, -154.95, 2, 0)
	MovementLoopAddLocation(NPC, -86.27, 4.35, -149.56, 2, 0)
	MovementLoopAddLocation(NPC, -82.84, 4.35, -145.81, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -82.35, 4.35, -151.22, 2, 0)
	MovementLoopAddLocation(NPC, -82.79, 5.03, -158.22, 2, 0)
	MovementLoopAddLocation(NPC, -85.23, 4.42, -167.02, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -88.06, 4.7, -161.34, 2, 0)
	MovementLoopAddLocation(NPC, -91.91, 4.37, -157.82, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -95.9, 4.39, -160.78, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -82.92, 2.58, -172.96, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -84.16, 4.34, -167.35, 2, 0)
	MovementLoopAddLocation(NPC, -89.22, 4.44, -159.7, 2, 0)
	MovementLoopAddLocation(NPC, -87.76, 4.35, -151.97, 2, math.random(14, 25))
end

