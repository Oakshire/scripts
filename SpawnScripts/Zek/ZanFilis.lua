--[[
    Script Name    : SpawnScripts/Zek/ZanFilis.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.22 06:04:44
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