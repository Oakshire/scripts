--[[
	Script Name	: Quests/FrostfangSea/frigid_fishing.lua
	Script Purpose	: the quest "Frigid Fishing"
	Script Author	: theFoof
	Script Date	: 2013.5.15

        Zone            : Frostfang Sea
        Quest Giver     : Arrin Clelland
        Preceded by     : Scraggly Foodstuffs
        Followed by     : 
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(30,60), math.random(2,4), 0, 0)
    AddQuestStepKill(Quest, 1, "Hunt Iceclad cod.", 5, 100, "I promised to hunt Iceclad cod in the waters around Pilgrims' Landing.", 2540, 4700028)
	AddQuestStepCompleteAction(Quest, 1, "KilledCod")
end

function KilledCod(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have hunted Iceclad cod in the waters around Pilgrims' Landing.")
	AddQuestStepChat(Quest, 2, "Return the Iceclad cod to Arrin.", 1, "I am to return the Iceclad cod to Arrin Clelland in Pilgrims' Landing.", 2540, 4700000)
    AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end


function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    KilledCod(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    CompleteQuest(Quest, QuestGiver, Player)
	end
end