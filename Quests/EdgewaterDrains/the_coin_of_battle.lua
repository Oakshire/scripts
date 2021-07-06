--[[
	Script Name		:	Quests/EdgewaterDrains/the_coin_of_battle.lua
	Script Purpose	:	Handles the quest, "The Coin of Battle"
	Script Author	:	premierio015
	Script Date		:	05.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Edgewater Drains
	Quest Giver		:	pile_of_bones(object)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to acquire five coins from the rotting skeletons in the Edgewater Drains.", 5, 100, "The coins are most likely on the rotting skeletons in the Edgewater Drains.  I will seek them out and destroy them!", 1763, 1560035, 1560036, 1560088, 1560089)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have acquired the coins.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I feel much more knowledgeable in battle having collected the coins from the rotting skeletons.")

	UpdateQuestDescription(Quest, "I feel much more knowledgeable in battle having collected the coins from the rotting skeletons.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

