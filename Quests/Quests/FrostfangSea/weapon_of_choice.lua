--[[
	Script Name	: Quests/FrostfangSea/weapon_of_choice.lua
	Script Purpose	: the quest Weapon of Choice
	Script Author	: theFoof
	Script Date	: 2013.6.3

        Zone            : Frostfang Sea
        Quest Giver     : Blorpisa Bogchild
        Preceded by     : Field Testing Part Two
        Followed by     : Disarming the Ry'Gorr
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(13,25), 0, 0)
	AddQuestStep(Quest, 1, "I must collect coldain weapons from the slain coldain.", 5, 100, "I must collect coldain weapons from the slain coldain that have died at the battlefield southeast of the Great Shelf.", 1650)
	AddQuestStepCompleteAction(Quest, 1, "GotWeapons")
end

function Accepted(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function GotWeapons(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the coldain weapons for Blorpisa.")
	AddQuestStepChat(Quest, 2, "I must speak with Blorpisa Bogchild. Blorpisa is staying at the Great Shelf.", 1, "I must return the weapons I have collected to Blorpisa in the Great Shelf.", 0, 4700039)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		GotWeapons(Quest, QuestGiver, Player)
	end
end