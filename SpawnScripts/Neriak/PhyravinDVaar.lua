--[[
	Script Name		:	SpawnScripts/Neriak/PhyravinDVaar.lua
	Script Purpose	:	Waypoint Path for Phyravin D'Vaar
	Script Author	:	Cynnar
	Script Date		:	5/26/2018 12:00:00 AM
	Script Notes	:	<special-instructions>
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
	MovementLoopAddLocation(NPC, -191.72, -3.98, 251.26, 2, 5)
	MovementLoopAddLocation(NPC, -192.87, -3.98, 251.58, 2, 0)
	MovementLoopAddLocation(NPC, -193.45, -3.98, 251.46, 2, 0)
	MovementLoopAddLocation(NPC, -203.03, -3.89, 249.9, 2, 0)
	MovementLoopAddLocation(NPC, -203.35, -3.86, 247.97, 2, 0)
	MovementLoopAddLocation(NPC, -203.37, -3.89, 246.24, 2, 0)
	MovementLoopAddLocation(NPC, -201.64, -3.89, 245.04, 2, 5)
	MovementLoopAddLocation(NPC, -203.03, -3.9, 245.15, 2, 0)
	MovementLoopAddLocation(NPC, -199.55, -3.92, 235.24, 2, 0)
	MovementLoopAddLocation(NPC, -194.76, -3.98, 238.22, 2, 0)
	MovementLoopAddLocation(NPC, -194.17, -3.79, 242.65, 2, 5)
	MovementLoopAddLocation(NPC, -194.6, -3.98, 238.42, 2, 0)
	MovementLoopAddLocation(NPC, -199.78, -3.89, 235.92, 2, 0)
	MovementLoopAddLocation(NPC, -202.46, -3.9, 243.69, 2, 5)
	MovementLoopAddLocation(NPC, -201.28, -3.89, 244.93, 2, 0)
	MovementLoopAddLocation(NPC, -203.01, -3.9, 245.56, 2, 0)
	MovementLoopAddLocation(NPC, -204.45, -3.86, 248.66, 2, 0)
	MovementLoopAddLocation(NPC, -193.37, -3.98, 252.22, 2, 5)
	MovementLoopAddLocation(NPC, -191.18, -3.98, 255.21, 2, 0)
	MovementLoopAddLocation(NPC, -188.73, -3.97, 258.22, 2, 0)
	MovementLoopAddLocation(NPC, -187.84, -3.98, 260.26, 2, 0)
	MovementLoopAddLocation(NPC, -184.67, -3.95, 268.33, 2, 0)
	MovementLoopAddLocation(NPC, -183.27, -3.87, 270.66, 2, 0)
	MovementLoopAddLocation(NPC, -182.08, -4.05, 272.47, 2, 0)
	MovementLoopAddLocation(NPC, -181.78, -3.98, 276.23, 2, 0)
	MovementLoopAddLocation(NPC, -180.4, -4.1, 273.39, 2, 0)
	MovementLoopAddLocation(NPC, -180.12, -3.96, 269.83, 2, 0)
	MovementLoopAddLocation(NPC, -181.12, -3.92, 267.87, 2, 0)
	MovementLoopAddLocation(NPC, -191.69, -3.98, 251.27, 2, 0)
end
