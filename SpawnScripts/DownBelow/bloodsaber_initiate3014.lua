--[[
    Script Name    : SpawnScripts/DownBelow/bloodsaber_initiate3014.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.03 07:04:11
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
	MovementLoopAddLocation(NPC, 27.08, -4, -136.74, 2, 5)
	MovementLoopAddLocation(NPC, 25.52, -4, -139.09, 2, 5)
	MovementLoopAddLocation(NPC, 21.68, -3.17, -137.99, 2, 5)
	MovementLoopAddLocation(NPC, 27.12, -4, -135.95, 2, 5)
	MovementLoopAddLocation(NPC, 27.37, -4, -138.16, 2, 5)
	MovementLoopAddLocation(NPC, 15.07, 0, -137.97, 2, 5)
	MovementLoopAddLocation(NPC, 22.92, -3.79, -138.33, 2, 5)
	MovementLoopAddLocation(NPC, 19.62, -2.15, -138.12, 2, 5)
	MovementLoopAddLocation(NPC, 28.16, -4, -135.91, 2, 5)
end


