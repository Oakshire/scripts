--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770141.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770141.lua
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
	MovementLoopAddLocation(NPC, -91.19, 4.42, -108.92, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -88.02, 4.4, -100.35, 2, 0)
	MovementLoopAddLocation(NPC, -86.18, 4.4, -87.2, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -79.26, 4.37, -99.46, 2, 0)
	MovementLoopAddLocation(NPC, -72.77, 4.32, -100.47, 2, 0)
	MovementLoopAddLocation(NPC, -69.47, 4.72, -102.9, 2, 0)
	MovementLoopAddLocation(NPC, -58.84, 2.92, -114.69, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -87.37, 4.4, -104.01, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -81.69, 4.37, -105.13, 2, 0)
	MovementLoopAddLocation(NPC, -62.95, 4.02, -113.48, 2, 0)
	MovementLoopAddLocation(NPC, -53.08, 2.3, -114.17, 2, 0)
	MovementLoopAddLocation(NPC, -40.87, 2.18, -122.17, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -48.46, 2.19, -116.79, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -54.66, 2.45, -113.8, 2, 0)
	MovementLoopAddLocation(NPC, -87.62, 4.4, -114.19, 2, math.random(14, 25))
end

