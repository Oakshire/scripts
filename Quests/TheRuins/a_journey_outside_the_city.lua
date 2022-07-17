--[[
	Script Name		:	a_journey_outside_the_city.lua
	Script Purpose	:	Handles the quest, "A Journey Outside the City"
	Script Author	:	torsten
	Script Date		:	16.07.2022
	Script Notes	:	

	Zone			:	The Ruins
	Quest Giver		:	Captain Arellius
	Preceded by		:	File a Final Report
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find Mooshga outside the gates to the City of Freeport in the Commonlands.", 1, "Captain Arellius in the Ruins has advised that I seek out adventures in the Commonlands. I should leave the gates of the City of Freeport and seek loyal subjects of the Overlord.", 11, 330015)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found Mooshga and spoke to her.")

	AddQuestStepChat(Quest, 2, "I should speak to Gerun Pontian outside the gates of the City of Freeport.", 1, "Captain Arellius in the Ruins has advised that I seek out adventures in the Commonlands. I should leave the gates of the City of Freeport and seek loyal subjects of the Overlord.", 11, 330014)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken to Gerun Pontian.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I ventured outside the gates of the City of Freeport and spoke to Mooshga and Gerun Pontian.")

	UpdateQuestDescription(Quest, "I traveled outside the city gates and found Mooshga, an ogre who needs my help, as well as Gerun Pontian of the Freeport Militia. After completing some tasks for them, I should remember to journey back to the Ruins and finish my work there.")
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
