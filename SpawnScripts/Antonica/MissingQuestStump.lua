--[[
    Script Name    : SpawnScripts/Antonica/MissingQuestStump.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.18 03:05:49
    Script Purpose : part of The Missing quest
                   : 
--]]

function spawn(NPC)
SetRequiredQuest(NPC,5840,4)
end


function respawn(NPC)
	spawn(NPC)
end