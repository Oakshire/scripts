--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothprotectorBridge2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.13 09:09:05
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
	MovementLoopAddLocation(NPC, -43.96, 2.84, -160.7, 2, 5)
	MovementLoopAddLocation(NPC, -14.48, 3.09, -174.3, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -14.48, 3.09, -174.3, 2, 0)
	MovementLoopAddLocation(NPC, -43.96, 2.84, -160.7, 2, 0)
end