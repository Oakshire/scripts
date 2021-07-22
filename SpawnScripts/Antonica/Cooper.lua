--[[
    Script Name    : SpawnScripts/Antonica/Cooper.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.21 07:07:18
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