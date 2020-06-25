--[[
	Script Name		:	SpawnScripts/Neriak/MKaiNFaer.lua
	Script Purpose	:	Waypoint Path for M'Kai N'Faer
	Script Author	:	Cynnar
	Script Date		:	5/14/2018 12:00:00 AM
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
	MovementLoopAddLocation(NPC, 26.89, 15.53, 48.74, 2, 0)
	MovementLoopAddLocation(NPC, 29.5, 14.17, 60.28, 2, 0)
	MovementLoopAddLocation(NPC, 27.26, 12.15, 77.39, 2, 0)
	MovementLoopAddLocation(NPC, 19.7, 11.52, 82.9, 2, 0)
	MovementLoopAddLocation(NPC, 6.16, 12.37, 84.59, 2, 0)
	MovementLoopAddLocation(NPC, -23.73, 11.56, 78.22, 2, 0)
	MovementLoopAddLocation(NPC, -33.12, 12.33, 92.08, 2, 0)
	MovementLoopAddLocation(NPC, -64.81, 11.38, 138.06, 2, 0)
	MovementLoopAddLocation(NPC, -71.01, 11.74, 158.02, 2, 0)
	MovementLoopAddLocation(NPC, -71.1, 11.41, 275.09, 2, 0)
	MovementLoopAddLocation(NPC, -71.01, 11.74, 158.02, 2, 0)
	MovementLoopAddLocation(NPC, -64.81, 11.38, 138.06, 2, 0)
	MovementLoopAddLocation(NPC, -33.12, 12.33, 92.08, 2, 0)
	MovementLoopAddLocation(NPC, -23.73, 11.56, 78.22, 2, 0)
	MovementLoopAddLocation(NPC, 6.16, 12.37, 84.59, 2, 0)
	MovementLoopAddLocation(NPC, 19.7, 11.52, 82.9, 2, 0)
	MovementLoopAddLocation(NPC, 27.26, 12.15, 77.39, 2, 0)
	MovementLoopAddLocation(NPC, 29.5, 14.17, 60.28, 2, 0)
end

