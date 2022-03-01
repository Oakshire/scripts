--[[
    Script Name    : SpawnScripts/ForestRuins/pack.lua
    Script Author  : Shatou
    Script Date    : 2020.01.10 08:01:20
    Script Purpose : 
                   : 
--]]

local NEWS_FOR_GERMAIN_QUEST_ID = 520

function spawn(NPC)
SetRequiredQuest(NPC, NEWS_FOR_GERMAIN_QUEST_ID, 1, 1)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function can_use_command(NPC, Spawn, String)
    if HasQuest(Spawn, NEWS_FOR_GERMAIN_QUEST_ID) then
        if GetQuestStep(Spawn, NEWS_FOR_GERMAIN_QUEST_ID) == 1 then
            return true
        end
    end
end