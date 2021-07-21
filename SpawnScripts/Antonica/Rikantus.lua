--[[
    Script Name    : SpawnScripts/Antonica/Rikantus.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.21 09:07:19
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