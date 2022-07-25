--[[
	Script Name		:	verins_new_thralls.lua
	Script Purpose	:	Handles the quest, "Verin's New Thralls"
	Script Author	:	torsten
	Script Date		:	24.07.2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Scale Yard
	Quest Giver		:	Verin Ithelz
	Preceded by		:	None
	Followed by		:	Preventative Maintenance
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill ten Dervish crooks.", 10, 100, "I should travel to the Sprawl and start beating on these dervish crooks.", 611, 1260000)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the Dervish crooks.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've beaten up ten of the dervishes.")
	
	AddQuestStepChat(Quest, 2, "I should return to Verin Ithelz.", 1, "I should return to Verin Ithelz in Scale Yard.", 11, 1390020)
    AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Verin paid me for testing the dervish crooks' mettle and let me keep one of their manacles. He told me that he may have further use of me in the future, so I should check back with him later.")
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

