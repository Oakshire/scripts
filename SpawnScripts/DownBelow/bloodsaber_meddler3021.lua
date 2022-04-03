--[[
    Script Name    : SpawnScripts/DownBelow/bloodsaber_meddler3021.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.03 07:04:49
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
	MovementLoopAddLocation(NPC, 25.52, -4, -135.79, 2, 7)
	MovementLoopAddLocation(NPC, 12.83, 0, -139.02, 2, 5)
	MovementLoopAddLocation(NPC, 22.94, -3.75, -139.65, 2, 5)
	MovementLoopAddLocation(NPC, 11.87, 0.26, -139.55, 2, 5)
	MovementLoopAddLocation(NPC, 19.84, -2.23, -137.35, 2, 5)
	MovementLoopAddLocation(NPC, 11.95, 0.07, -135.76, 2, 5)
	MovementLoopAddLocation(NPC, 27.85, -4, -139.55, 2, 5)
end
