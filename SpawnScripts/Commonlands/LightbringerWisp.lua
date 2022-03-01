--[[
    Script Name    : SpawnScripts/Commonlands/LightbringerWisp.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.30 09:05:57
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end