--[[
    Script Name    : SpawnScripts/IsleRefuge1/Weaponrack.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.10 04:09:34
    Script Purpose : Facilitates Garven Tralk's quest update.
                   : 
--]]
local FighterGI = 5726
local PriestGI = 5727
local MageGI = 5728
local ScoutGI = 5729

function spawn(NPC)
SetRequiredQuest(NPC,FighterGI,1)
SetRequiredQuest(NPC,PriestGI,1)
SetRequiredQuest(NPC,MageGI,1)
SetRequiredQuest(NPC,ScoutGI,1)
end

function casted_on(NPC, Player, Message)
    if Message == "Search weapon rack" then
        if GetQuestStep(Player,FighterGI)==1 then
            SetStepComplete(Player,FighterGI,1)
            
        elseif GetQuestStep(Player,PriestGI)==1 then
            SetStepComplete(Player,PriestGI,1)
            
        elseif GetQuestStep(Player,MageGI)==1 then
            SetStepComplete(Player,MageGI,1)
        
        elseif GetQuestStep(Player,ScoutGI)==1 then
            SetStepComplete(Player,ScoutGI,1)
        end
    end
end

function respawn(NPC)
	spawn(NPC)
end