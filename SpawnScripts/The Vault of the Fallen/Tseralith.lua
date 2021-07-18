--[[
    Script Name    : SpawnScripts/The Vault of the Fallen/Tseralith.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.17 02:07:33
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