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
            Fighter = GetQuest(Player,5726)
            SetStepComplete(Player,FighterGI,1)
            if not HasItem(Player, 1001011,1) and not HasItem(Player, 75057,1) then
            GiveQuestItem(Fighter,Player,"You found some items that suit you on the weapon rack.",1001011, 75057)
            end            
        elseif GetQuestStep(Player,PriestGI)==1 then
            Priest = GetQuest(Player,5727)
            SetStepComplete(Player,PriestGI,1)
            if not HasItem(Player, 1001011,1) and not HasItem(Player, 73731,1) then
            GiveQuestItem(Priest,Player,"You found some items that suit you on the weapon rack.",1001011, 73731)
            end           
        elseif GetQuestStep(Player,MageGI)==1 then
            Mage = GetQuest(Player,5728)
            SetStepComplete(Player,MageGI,1)
            if not HasItem(Player, 1001011,1) and not HasItem(Player, 73899,1) then
            GiveQuestItem(Mage,Player,"You found some items that suit you on the weapon rack.",1001011,73899)
            end        
        elseif GetQuestStep(Player,ScoutGI)==1 then
            Scout =GetQuest(Player,5729)
            SetStepComplete(Player,ScoutGI,1)
            if not HasItem(Player, 1001011,1) and not HasItem(Player, 73896,1) then
            GiveQuestItem(Scout,Player,"You found some items that suit you on the weapon rack.",1001011,73896)
            end
        end
    end
end

function respawn(NPC)
	spawn(NPC)
end