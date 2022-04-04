--[[
    Script Name    : SpawnScripts/DownBelow/bloodsaber_adjunct3015.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.03 09:04:48
    Script Purpose : 
                   : 
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
	MovementLoopAddLocation(NPC, 8.16, -4, -154.98, 2, 9)
	MovementLoopAddLocation(NPC, 8.77, -4, -160.27, 2, 5)
	MovementLoopAddLocation(NPC, 5.83, 0.11, -143.26, 2, 5)
	MovementLoopAddLocation(NPC, 7.59, -4, -155.2, 2, 5)
	MovementLoopAddLocation(NPC, 7.23, -0.42, -147.19, 2, 5)
	MovementLoopAddLocation(NPC, 9.12, -4, -156.19, 2, 5)
	MovementLoopAddLocation(NPC, 6.91, -0.85, -147.98, 2, 5)
	MovementLoopAddLocation(NPC, 5.86, -0.02, -146.18, 2, 5)
	MovementLoopAddLocation(NPC, 9.57, -4, -157.38, 2, 5)
end


