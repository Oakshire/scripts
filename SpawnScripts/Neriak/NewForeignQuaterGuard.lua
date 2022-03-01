--[[
	Script Name		:	SpawnScripts/Neriak/NewForeignQuaterGuard.lua
	Script Purpose	:	Waypoint Path for New Foreign Quater Guard
	Script Author	:	Cynnar
	Script Date		:	5/14/2018 12:00:00 AM
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
	MovementLoopAddLocation(NPC, 118.87, 24.08, 158.84, 2, 0)
	MovementLoopAddLocation(NPC, 115.19, 24.15, 159.04, 2, 0)
	MovementLoopAddLocation(NPC, 103.03, 23.81, 153.4, 2, 0)
	MovementLoopAddLocation(NPC, 100.66, 23.72, 148.5, 2, 0)
	MovementLoopAddLocation(NPC, 100.85, 23.39, 144.32, 2, 0)
	MovementLoopAddLocation(NPC, 101.87, 22.1, 136.97, 2, 0)
	MovementLoopAddLocation(NPC, 103.94, 21.84, 132.45, 2, 0)
	MovementLoopAddLocation(NPC, 107.79, 21.84, 128.72, 2, 0)
	MovementLoopAddLocation(NPC, 109.07, 21.78, 124.67, 2, 0)
	MovementLoopAddLocation(NPC, 108.04, 21.57, 118.39, 2, 0)
	MovementLoopAddLocation(NPC, 104.63, 21.7, 115.35, 2, 0)
	MovementLoopAddLocation(NPC, 98.69, 21.72, 110.94, 2, 0)
	MovementLoopAddLocation(NPC, 97.92, 21.75, 106.18, 2, 0)
	MovementLoopAddLocation(NPC, 98.32, 21.73, 102.39, 2, 0)
	MovementLoopAddLocation(NPC, 99.2, 21.74, 97, 2, 0)
	MovementLoopAddLocation(NPC, 97.97, 21.7, 94.51, 2, 0)
	MovementLoopAddLocation(NPC, 95.42, 21.7, 91.79, 2, 0)
	MovementLoopAddLocation(NPC, 91.87, 21.7, 88.91, 2, 0)
	MovementLoopAddLocation(NPC, 90.82, 21.7, 84.19, 2, 0)
	MovementLoopAddLocation(NPC, 91.39, 21.7, 81.53, 2, 0)
	MovementLoopAddLocation(NPC, 94.53, 21.7, 76.52, 2, 0)
	MovementLoopAddLocation(NPC, 97.97, 21.7, 72.06, 2, 0)
	MovementLoopAddLocation(NPC, 94.53, 21.7, 76.52, 2, 0)
	MovementLoopAddLocation(NPC, 91.39, 21.7, 81.53, 2, 0)
	MovementLoopAddLocation(NPC, 90.82, 21.7, 84.19, 2, 0)
	MovementLoopAddLocation(NPC, 91.87, 21.7, 88.91, 2, 0)
	MovementLoopAddLocation(NPC, 95.42, 21.7, 91.79, 2, 0)
	MovementLoopAddLocation(NPC, 97.97, 21.7, 94.51, 2, 0)
	MovementLoopAddLocation(NPC, 99.2, 21.74, 97, 2, 0)
	MovementLoopAddLocation(NPC, 98.32, 21.73, 102.39, 2, 0)
	MovementLoopAddLocation(NPC, 97.92, 21.75, 106.18, 2, 0)
	MovementLoopAddLocation(NPC, 98.69, 21.72, 110.94, 2, 0)
	MovementLoopAddLocation(NPC, 104.63, 21.7, 115.35, 2, 0)
	MovementLoopAddLocation(NPC, 108.04, 21.57, 118.39, 2, 0)
	MovementLoopAddLocation(NPC, 109.07, 21.78, 124.67, 2, 0)
	MovementLoopAddLocation(NPC, 107.79, 21.84, 128.72, 2, 0)
	MovementLoopAddLocation(NPC, 103.94, 21.84, 132.45, 2, 0)
	MovementLoopAddLocation(NPC, 101.87, 22.1, 136.97, 2, 0)
	MovementLoopAddLocation(NPC, 100.85, 23.39, 144.32, 2, 0)
	MovementLoopAddLocation(NPC, 100.66, 23.72, 148.5, 2, 0)
	MovementLoopAddLocation(NPC, 103.03, 23.81, 153.4, 2, 0)
	MovementLoopAddLocation(NPC, 115.19, 24.15, 159.04, 2, 0)
end
