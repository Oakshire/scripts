--[[
    Script Name    : SpawnScripts/Antonica/NotFound.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.18 03:05:16
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetRequiredQuest(NPC,5840,1)
end


function respawn(NPC)
	spawn(NPC)
end