--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770048.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770048.lua
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
	MovementLoopAddLocation(NPC, -103.6, 4.46, -118.24, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -106.72, 4.48, -114.23, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -107.82, 4.51, -125.17, 2, 0)
	MovementLoopAddLocation(NPC, -107.33, 4.55, -128.29, 2, 0)
	MovementLoopAddLocation(NPC, -109.54, 4.49, -137.33, 2, 0)
	MovementLoopAddLocation(NPC, -109.62, 4.49, -144.06, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -109.85, 4.49, -138.22, 2, 0)
	MovementLoopAddLocation(NPC, -110.67, 4.61, -126.83, 2, 0)
	MovementLoopAddLocation(NPC, -108.33, 4.48, -122.65, 2, 0)
	MovementLoopAddLocation(NPC, -101.4, 4.46, -119.32, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -105.82, 4.41, -112.78, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -110.78, 4.57, -125.65, 2, 0)
	MovementLoopAddLocation(NPC, -110.09, 4.5, -132.09, 2, 0)
	MovementLoopAddLocation(NPC, -111.61, 4.5, -144.49, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -107.16, 4.53, -130.29, 2, 0)
	MovementLoopAddLocation(NPC, -108.2, 4.48, -123.18, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -102.02, 4.46, -119.59, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -107.5, 4.48, -123.22, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -114.32, 4.31, -122.33, 2, math.random(14, 25))
end

