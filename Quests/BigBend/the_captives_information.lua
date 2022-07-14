--[[
	Script Name		:	the_captives_information.lua
	Script Purpose	:	Handles the quest, "The Captive's Information"
	Script Author	:	torsten
	Script Date		:	10.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Vakiza Skinner
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill twelve tortured souls in the Commonlands", 12, 100, "I need to kill twelve tortured souls in the Commonlands.", 611, 330116)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've killed twelve tortured souls.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've slain twelve tortured souls.")

	AddQuestStepChat(Quest, 2, "I need to speak with Vakiza Skinner", 1, "I need to speak with Vakiza Skinner in Freeport, near Big Bend, and tell her that I have completed her task.", 11, 1340031)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I spoke with Vakiza Skinner.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I spoke with Vakiza Skinner.")

	AddQuestStepKill(Quest, 3, "I need to kill five sandstone giants in the Commonlands", 5, 100, "I need to kill twelve tortured souls in the Commonlands.", 611, 330108)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've killed five sandstone giants.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've slain five sandstone giants.")

	AddQuestStepChat(Quest, 4, "I need to speak with Vakiza Skinner", 1, "I need to speak with Vakiza Skinner in Freeport, near Big Bend, and tell her that I have completed her task.", 11, 1340031)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I spoke with Vakiza Skinner.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I spoke with Vakiza Skinner.")

	UpdateQuestDescription(Quest, "I've taken care of the creatures for Vakiza Skinner.  She said the Overlord would be pleased with our work.")
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
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

