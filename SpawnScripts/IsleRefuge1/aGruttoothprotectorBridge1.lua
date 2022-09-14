--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothprotectorBridge1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.13 09:09:12
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
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -1.92, 2.52, -124.01, 2, 5)
	MovementLoopAddLocation(NPC, 23.74, 2.9, -120.05, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 23.74, 2.9, -120.05, 2, 0)
	MovementLoopAddLocation(NPC, -1.92, 2.52, -124.01, 2, 0)
end

