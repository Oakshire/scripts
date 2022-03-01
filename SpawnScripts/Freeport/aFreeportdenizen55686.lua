--[[
    Script Name    : SpawnScripts/Freeport/aFreeportdenizen55686.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.09 07:05:48
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
MovementLoopAddLocation(NPC, -52.72, -8.26, 201.73, 2, 0)
MovementLoopAddLocation(NPC, -69.52, -13.74, 210.26, 2, 0)
MovementLoopAddLocation(NPC, -81.52, -19.45, 208.82, 2, 0)
MovementLoopAddLocation(NPC, -94.44, -24.99, 198.41, 2, 0)
MovementLoopAddLocation(NPC, -114.43, -24.96, 191.90, 2, 10)
MovementLoopAddLocation(NPC, -114.44, -24.96, 191.90, 2, 0)
MovementLoopAddLocation(NPC, -94.44, -24.99, 198.41, 2, 0)
MovementLoopAddLocation(NPC, -81.52, -19.45, 208.82, 2, 0)
MovementLoopAddLocation(NPC, -69.52, -13.74, 210.26, 2, 0)
MovementLoopAddLocation(NPC, -52.72, -8.26, 201.73, 2, 0)
MovementLoopAddLocation(NPC, -41.96, -8.26, 170.14, 2, 10)
MovementLoopAddLocation(NPC, -41.96, -8.26, 170.14, 2, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end