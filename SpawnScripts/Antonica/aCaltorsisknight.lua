--[[
    Script Name    : SpawnScripts/Antonica/aCaltorsisknight.lua
    Script Author  : theFoof
    Script Date    : 2022.08.09 11:08:14
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