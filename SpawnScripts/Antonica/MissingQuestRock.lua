--[[
    Script Name    : SpawnScripts/Antonica/MissingQuestRock.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.18 03:05:34
    Script Purpose : part of The Missing quest
                   : 
--]]

function spawn(NPC)
SetRequiredQuest(NPC,5840,3)
end


function respawn(NPC)
	spawn(NPC)
end