--[[
	Script Name		:	bring_out_your_souls.lua
	Script Purpose	:	Handles the quest, "Bring Out Your Souls"
	Script Author	:	premierio015
	Script Date		:	25.06.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Graveyard
	Quest Giver		:	 Zekvila Dizelk
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill undead", 10, 100, "Zekvila asked me to destroy some undead in the Graveyard. I'll hold out the crystal as each one is destroyed.  I can reach the Graveyard by using any of the bells in and around the City of Freeport.", 611, 1250007, 1250006, 1250010, 1250008, 1250018, 1250012, 1250013, 1250019, 1250030, 1250033, 1250026, 1250023, 1250028, 1250024, 1250021)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the undead.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed ten undead and collected their souls.")

	AddQuestStepChat(Quest, 2, "Speak with Zekvila", 1, "I should return the crystal to Zekvila in the Graveyard.  I can reach the Graveyard by using any of the bells in and around the City of Freeport.", 11, 1250034)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Zekvila.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given Zekvila the crystal filled with souls.")

	UpdateQuestDescription(Quest, "Zekvila was pleased with the crystal. She claims that it will help her topple her rival's rule. I think I may ask her later if she needs any more help, in case she actually is successful.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
