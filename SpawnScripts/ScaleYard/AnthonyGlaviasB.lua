--[[
    Script Name    : SpawnScripts/ScaleYard/AnthonyGlaviasB.lua
    Script Author  : torsten
    Script Date    : 2022.08.01 06:08:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    Attack(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end