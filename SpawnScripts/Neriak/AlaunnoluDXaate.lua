--[[
	Script Name		:	SpawnScripts/Neriak/AlaunnoluDXaate.lua
	Script Purpose	:	Waypoint Path for Alaunnolu D'Xaate
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
	MovementLoopAddLocation(NPC, -175.34, 0.46, 310.32, 2, 0)
	MovementLoopAddLocation(NPC, -180.72, 0.12, 308.7, 2, 10)
	MovementLoopAddLocation(NPC, -182.41, 0.37, 308.5, 2, 0)
	MovementLoopAddLocation(NPC, -181.26, 0.22, 309.89, 2, 0)
	MovementLoopAddLocation(NPC, -185.68, 0.49, 315.7, 2, 0)
	MovementLoopAddLocation(NPC, -188.41, 0.49, 314.35, 2, 0)
	MovementLoopAddLocation(NPC, -187.92, 0.49, 311.61, 2, 0)
	MovementLoopAddLocation(NPC, -187.01, 0.49, 310.86, 2, 0)
	MovementLoopAddLocation(NPC, -186.05, 0.49, 307.92, 2, 0)
	MovementLoopAddLocation(NPC, -185.31, 0.49, 308.15, 2, 10)
	MovementLoopAddLocation(NPC, -189.13, 0.49, 310.85, 2, 0)
	MovementLoopAddLocation(NPC, -188.44, 0.49, 310.85, 2, 0)
	MovementLoopAddLocation(NPC, -187.45, 0.49, 310.26, 2, 0)
	MovementLoopAddLocation(NPC, -186.61, 0.48, 307.85, 2, 10)
	MovementLoopAddLocation(NPC, -185.21, 0.49, 308.21, 2, 0)
	MovementLoopAddLocation(NPC, -186.46, 0.49, 308.58, 2, 0)
	MovementLoopAddLocation(NPC, -187.27, 0.49, 310.63, 2, 0)
	MovementLoopAddLocation(NPC, -188.85, 0.49, 312.49, 2, 0)
	MovementLoopAddLocation(NPC, -189, 0.49, 313.87, 2, 0)
	MovementLoopAddLocation(NPC, -185.78, 0.49, 315.89, 2, 0)
	MovementLoopAddLocation(NPC, -181.13, 0.27, 310.39, 2, 0)
	MovementLoopAddLocation(NPC, -182.53, 0.4, 308.53, 2, 10)
	MovementLoopAddLocation(NPC, -180.98, 0.1, 308.57, 2, 0)
	MovementLoopAddLocation(NPC, -175.35, 0.46, 310.43, 2, 5)
end
