--[[
    Script Name    : SpawnScripts/Freeport/aFreeportresident56013.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.09 07:05:21
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
MovementLoopAddLocation(NPC, -16.65, -7.01, 180.85, 2, 0)
MovementLoopAddLocation(NPC, -26.42, -7.01, 181.10, 2, 0)
MovementLoopAddLocation(NPC, -26.91, -7.01, 196.27, 2, 0)
MovementLoopAddLocation(NPC, -45.15, -8.26, 197.15, 2, 0)
MovementLoopAddLocation(NPC, -44.43, -8.26, 212.35, 2, 0)
MovementLoopAddLocation(NPC, -62.19, -8.26, 218.55, 2, 10)
MovementLoopAddLocation(NPC, -44.43, -8.26, 212.35, 2, 0)
MovementLoopAddLocation(NPC, -45.15, -8.26, 197.15, 2, 0)
MovementLoopAddLocation(NPC, -26.91, -7.01, 196.27, 2, 0)
MovementLoopAddLocation(NPC, -26.42, -7.01, 181.10, 2, 0)
MovementLoopAddLocation(NPC, -16.65, -7.01, 180.85, 2, 0)
MovementLoopAddLocation(NPC, -17.21, -7.00, 177.41, 2, 10, "", 2.22)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end