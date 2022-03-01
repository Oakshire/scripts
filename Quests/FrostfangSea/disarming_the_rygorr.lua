--[[
	Script Name	: Quests/FrostfangSea/disarming_the_rygorr.lua
	Script Purpose	: the quest Disarming the Ry'Gorr
	Script Author	: theFoof
	Script Date	: 2013.6.3

        Zone            : Frostfang Sea
        Quest Giver     : Blorpisa Bogchild
        Preceded by     : Weapon of Choice
        Followed by     : Perfectly Missing
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,80), math.random(13,25), 0, 0)
	AddQuestStep(Quest, 1, "I must cleanse Ry'Gorr weapons.", 5, 100, "I must go to the battlefield and cleanse Ry'Gorr weapons.", 616)
	AddQuestStepCompleteAction(Quest, 1, "CleansedWeapons")
end

function Accepted(Quest, QuestGiver, Player)
	if not HasItem(Player, 47614) then
		SummonItem(Player, 47614, 1)
	end
end

function Deleted(Quest, QuestGiver, Player)
    if HasItem(Player, 47614) then
        RemoveItem(Player, 47614)
    end
end

function Declined(Quest, QuestGiver, Player)
end

function CleansedWeapons(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have cleansed the Ry'Gorr weapons I found on the battlefield.")
	AddQuestStepChat(Quest, 2, "I must speak with Blorpisa Bogchild. Blorpisa is staying at the Great Shelf.", 1, "I must return to Blorpisa at the Great Shelf and tell her that her potion was a success.", 0, 4700039)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
    if HasItem(Player, 47614) then
        RemoveItem(Player, 47614)
    end
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		CleansedWeapons(Quest, QuestGiver, Player)
	end
end