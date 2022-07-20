--[[
	Script Name		:	the_missing_book.lua
	Script Purpose	:	Handles the quest, "The Missing Book"
	Script Author	:	torsten
	Script Date		:	19.07.2022
	Script Notes	:	

	Zone			:	Longshadow Alley
	Quest Giver		:	Lotni K`Iria
	Preceded by		:	None
	Followed by		:	Magical Retribution
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find the thief.", 1, "I need to find and speak to the Ratonga who stole Lotni's book.", 11, 1360007)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke to the Ratonga thief, Chrna.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the Ratonga, but she didn't have the book.")

    AddQuestStepChat(Quest, 2, "I should return to Lotni.", 1, "I should return to Lotni in Longshadow Alley.", 11, 1380009)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Lotni claims she already spoke to the mastermind behind the theft. Unfortunately,she already killed him when his answers were not satisfactory. I doubt she will ever get her book back.")
	GiveQuestReward(Quest, Player)
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

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end
