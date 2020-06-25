--[[
	Script Name		:	SpawnScripts/Neriak/DocksideMarketGuardB.lua
	Script Purpose	:	Waypoint Path for Dockside Market Guard B Docks to Indigo Hollow path
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
	MovementLoopAddLocation(NPC, 24.16, 3.75, 318.7, 2, 0)
	MovementLoopAddLocation(NPC, -3.28, 6.38, 324.29, 2, 0)
	MovementLoopAddLocation(NPC, -14.58, 6.54, 324.55, 2, 0)
	MovementLoopAddLocation(NPC, -22.19, 6.84, 321.52, 2, 0)
	MovementLoopAddLocation(NPC, -30.74, 6.89, 321.32, 2, 0)
	MovementLoopAddLocation(NPC, -36.76, 6.92, 324.06, 2, 0)
	MovementLoopAddLocation(NPC, -42.91, 6.97, 327.67, 2, 0)
	MovementLoopAddLocation(NPC, -50.3, 6.93, 329.78, 2, 0)
	MovementLoopAddLocation(NPC, -56.52, 7.01, 329.75, 2, 0)
	MovementLoopAddLocation(NPC, -67.58, 6.91, 327.95, 2, 0)
	MovementLoopAddLocation(NPC, -71.02, 7.03, 326.28, 2, 0)
	MovementLoopAddLocation(NPC, -75.87, 7.09, 321.93, 2, 0)
	MovementLoopAddLocation(NPC, -79.09, 7.42, 314.05, 2, 0)
	MovementLoopAddLocation(NPC, -80.73, 7.9, 306.18, 2, 0)
	MovementLoopAddLocation(NPC, -85.95, 7.99, 301.04, 2, 0)
	MovementLoopAddLocation(NPC, -98.99, 7.81, 299.93, 2, 0)
	MovementLoopAddLocation(NPC, -102.85, 7.63, 298.22, 2, 0)
	MovementLoopAddLocation(NPC, -106.82, 7.48, 295.86, 2, 0)
	MovementLoopAddLocation(NPC, -108.95, 7.45, 292.94, 2, 0)
	MovementLoopAddLocation(NPC, -111.81, 7.49, 276.59, 2, 0)
	MovementLoopAddLocation(NPC, -113.82, 7.59, 270.35, 2, 0)
	MovementLoopAddLocation(NPC, -117.22, 7.59, 263.35, 2, 0)
	MovementLoopAddLocation(NPC, -119.78, 7.45, 258.99, 2, 0)
	MovementLoopAddLocation(NPC, -122.32, 7.37, 256.23, 2, 0)
	MovementLoopAddLocation(NPC, -126.65, 7.2, 252.78, 2, 0)
	MovementLoopAddLocation(NPC, -122.32, 7.37, 256.23, 2, 0)
	MovementLoopAddLocation(NPC, -119.78, 7.45, 258.99, 2, 0)
	MovementLoopAddLocation(NPC, -117.22, 7.59, 263.35, 2, 0)
	MovementLoopAddLocation(NPC, -113.82, 7.59, 270.35, 2, 0)
	MovementLoopAddLocation(NPC, -111.81, 7.49, 276.59, 2, 0)
	MovementLoopAddLocation(NPC, -108.95, 7.45, 292.94, 2, 0)
	MovementLoopAddLocation(NPC, -106.82, 7.48, 295.86, 2, 0)
	MovementLoopAddLocation(NPC, -102.85, 7.63, 298.22, 2, 0)
	MovementLoopAddLocation(NPC, -98.99, 7.81, 299.93, 2, 0)
	MovementLoopAddLocation(NPC, -85.95, 7.99, 301.04, 2, 0)
	MovementLoopAddLocation(NPC, -80.73, 7.9, 306.18, 2, 0)
	MovementLoopAddLocation(NPC, -79.09, 7.42, 314.05, 2, 0)
	MovementLoopAddLocation(NPC, -75.87, 7.09, 321.93, 2, 0)
	MovementLoopAddLocation(NPC, -71.02, 7.03, 326.28, 2, 0)
	MovementLoopAddLocation(NPC, -67.58, 6.91, 327.95, 2, 0)
	MovementLoopAddLocation(NPC, -56.52, 7.01, 329.75, 2, 0)
	MovementLoopAddLocation(NPC, -50.3, 6.93, 329.78, 2, 0)
	MovementLoopAddLocation(NPC, -42.91, 6.97, 327.67, 2, 0)
	MovementLoopAddLocation(NPC, -36.76, 6.92, 324.06, 2, 0)
	MovementLoopAddLocation(NPC, -30.74, 6.89, 321.32, 2, 0)
	MovementLoopAddLocation(NPC, -22.19, 6.84, 321.52, 2, 0)
	MovementLoopAddLocation(NPC, -14.58, 6.54, 324.55, 2, 0)
	MovementLoopAddLocation(NPC, -3.28, 6.38, 324.29, 2, 0)
	MovementLoopAddLocation(NPC, 24.16, 3.75, 318.7, 2, 0)
end


