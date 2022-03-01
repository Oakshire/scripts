--[[
	Script Name	:	SpawnScripts/The Estate of Unrest/ajackolantern369609.lua
	Script Purpose	:
	Script Author	:	Auto Generated Neatz09
	Script Date		:	01/05/2021 07:50:25 PM
	Script Notes	:	Locations collected from Live
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
	MovementLoopAddLocation(NPC, 70.62, 0.4, 165.01, 2, 10)
	MovementLoopAddLocation(NPC, 63.17, -0.20, 167.74, 2, 10)
	MovementLoopAddLocation(NPC, 65.4, 0.5, 124.81, 2, 10)
	MovementLoopAddLocation(NPC, 78.10, 0.94, 137.65, 2, 10)
	MovementLoopAddLocation(NPC, 72.09, 0, 172.34, 2, 10)
end