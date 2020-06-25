--[[
	Script Name		:	SpawnScripts/Neriak/DocksideMarketGuardA.lua
	Script Purpose	:	Waypoint Path for Dockside Market Guard A Spires to Indigo Hollow path
	Script Author	:	Cynnar
	Script Date		:	5/20/2018 12:00:00 AM
	Script Notes	:	<special-instructions>
--]]

function spawn(NPC)
	SetMount(NPC, 7242)
	SetMountColor(NPC, 65, 52, 44, 58, 59, 151)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -78.02, 9.05, 293.06, 2, 0)
	MovementLoopAddLocation(NPC, -81.24, 8.37, 298.21, 2, 0)
	MovementLoopAddLocation(NPC, -82.74, 8.12, 299.87, 2, 0)
	MovementLoopAddLocation(NPC, -84.4, 7.96, 301.49, 2, 0)
	MovementLoopAddLocation(NPC, -87.89, 8.04, 301.09, 2, 0)
	MovementLoopAddLocation(NPC, -94.29, 8.07, 300.26, 2, 0)
	MovementLoopAddLocation(NPC, -100.81, 7.7, 299.93, 2, 0)
	MovementLoopAddLocation(NPC, -105.37, 7.53, 297.03, 2, 0)
	MovementLoopAddLocation(NPC, -107.67, 7.48, 294.44, 2, 0)
	MovementLoopAddLocation(NPC, -109.8, 7.47, 291.08, 2, 0)
	MovementLoopAddLocation(NPC, -111.14, 7.53, 286.49, 2, 0)
	MovementLoopAddLocation(NPC, -111.6, 7.48, 283.09, 2, 0)
	MovementLoopAddLocation(NPC, -112.41, 7.49, 273.54, 2, 0)
	MovementLoopAddLocation(NPC, -114.46, 7.64, 269.93, 2, 0)
	MovementLoopAddLocation(NPC, -118.77, 7.58, 267.13, 2, 0)
	MovementLoopAddLocation(NPC, -124.56, 7.62, 265.87, 2, 0)
	MovementLoopAddLocation(NPC, -130.35, 8.11, 263.9, 2, 0)
	MovementLoopAddLocation(NPC, -146.45, 12.22, 267, 2, 0)
	MovementLoopAddLocation(NPC, -149.24, 12.55, 266.35, 2, 0)
	MovementLoopAddLocation(NPC, -153.17, 12.72, 264.43, 2, 0)
	MovementLoopAddLocation(NPC, -158.32, 12.9, 260.13, 2, 0)
	MovementLoopAddLocation(NPC, -161.35, 12.97, 256.96, 2, 0)
	MovementLoopAddLocation(NPC, -163.86, 13, 255.3, 2, 0)
	MovementLoopAddLocation(NPC, -161.35, 12.97, 256.96, 2, 0)
	MovementLoopAddLocation(NPC, -158.32, 12.9, 260.13, 2, 0)
	MovementLoopAddLocation(NPC, -153.17, 12.72, 264.43, 2, 0)
	MovementLoopAddLocation(NPC, -149.24, 12.55, 266.35, 2, 0)
	MovementLoopAddLocation(NPC, -146.45, 12.22, 267, 2, 0)
	MovementLoopAddLocation(NPC, -130.35, 8.11, 263.9, 2, 0)
	MovementLoopAddLocation(NPC, -124.56, 7.62, 265.87, 2, 0)
	MovementLoopAddLocation(NPC, -118.77, 7.58, 267.13, 2, 0)
	MovementLoopAddLocation(NPC, -114.46, 7.64, 269.93, 2, 0)
	MovementLoopAddLocation(NPC, -112.41, 7.49, 273.54, 2, 0)
	MovementLoopAddLocation(NPC, -111.6, 7.48, 283.09, 2, 0)
	MovementLoopAddLocation(NPC, -111.14, 7.53, 286.49, 2, 0)
	MovementLoopAddLocation(NPC, -109.8, 7.47, 291.08, 2, 0)
	MovementLoopAddLocation(NPC, -107.67, 7.48, 294.44, 2, 0)
	MovementLoopAddLocation(NPC, -105.37, 7.53, 297.03, 2, 0)
	MovementLoopAddLocation(NPC, -100.81, 7.7, 299.93, 2, 0)
	MovementLoopAddLocation(NPC, -94.29, 8.07, 300.26, 2, 0)
	MovementLoopAddLocation(NPC, -87.89, 8.04, 301.09, 2, 0)
	MovementLoopAddLocation(NPC, -84.4, 7.96, 301.49, 2, 0)
	MovementLoopAddLocation(NPC, -82.74, 8.12, 299.87, 2, 0)
	MovementLoopAddLocation(NPC, -81.24, 8.37, 298.21, 2, 0)
	MovementLoopAddLocation(NPC, -78.02, 9.05, 293.06, 2, 0)
	MovementLoopAddLocation(NPC, -73.56, 10.96, 280.13, 2, 0)
end
