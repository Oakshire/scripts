--[[
    Script Name    : SpawnScripts/MizansCellar/crushedstone.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.22 06:09:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5749,6,1,0,1)
end

function casted_on(NPC, Spawn, Message)
    if Message == "Mining" then
     if QuestStepIsComplete(Spawn,5749,6)== false then
        SetStepComplete(Spawn,5749,6)
    end
    end
end

function respawn(NPC)
	spawn(NPC)
end