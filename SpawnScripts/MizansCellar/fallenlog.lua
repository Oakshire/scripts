--[[
    Script Name    : SpawnScripts/MizansCellar/fallenlog.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.22 06:09:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5749,7,1,0,1)
end


function casted_on(NPC, Spawn, Message)
    if Message == "Foresting" then
     if QuestStepIsComplete(Spawn,5749,7)== false then
        SetStepComplete(Spawn,5749,7)
    end
    end
end
function respawn(NPC)
	spawn(NPC)
end