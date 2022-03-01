--[[
    Script Name    : SpawnScripts/Freeport/afangedsentinel.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.24 06:04:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
--MovementLoopAddLocation(NPC, 278.67, -4.14, -88.47, 2, 5)
--MovementLoopAddLocation(NPC, 212.20, -3.94, -87.62, 2, 5)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end