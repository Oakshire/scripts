--[[
    Script Name    : SpawnScripts/Antonica/MissingQuestPondRock.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.18 03:05:47
    Script Purpose : part of The Missing quest
                   : 
--]]

function spawn(NPC)
SetRequiredQuest(NPC,5840,5)
end


function respawn(NPC)
	spawn(NPC)
end