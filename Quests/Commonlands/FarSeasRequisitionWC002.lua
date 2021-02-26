--[[
	Script Name		:	Quests/Commonlands/FarSeasRequisitionWC002.lua
	Script Purpose	:	Handles the quest, "Far Seas Requisition - WC 002"
	Script Author	:	premierio015
	Script Date		:	25.02.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Hunt lurid crawlers for their fangs", 4, 100, "This particular order calls for four lurid crawler fangs, four lurid creeper fangs, two lurid ripper fangs and one set of lurid feeder fangs. The location listed on the order slip points to the Wailing Caves.", 102, 2580004)
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
	UpdateQuestStepDescription(Quest, 1, "I've collected enough lurid crawler fangs.")

	AddQuestStepKill(Quest, 2, "Hunt lurid creepers for their fangs", 4, 100, "This particular order calls for four lurid crawler fangs, four lurid creeper fangs, two lurid ripper fangs and one set of lurid feeder fangs. The location listed on the order slip points to the Wailing Caves.", 102, 2580013)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've collected enough lurid creeper fangs.")

	AddQuestStepKill(Quest, 3, "Hunt lurid rippers for their fangs", 2, 100, "This particular order calls for four lurid crawler fangs, four lurid creeper fangs, two lurid ripper fangs and one set of lurid feeder fangs. The location listed on the order slip points to the Wailing Caves.", 102, 2580011)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've collected enough lurid ripper fangs.")

	AddQuestStepKill(Quest, 4, "Hunt a lurid feeder and get its fangs", 1, 100, "This particular order calls for four lurid crawler fangs, four lurid creeper fangs, two lurid ripper fangs and one set of lurid feeder fangs. The location listed on the order slip points to the Wailing Caves.", 157, 2580012)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've colleced a lurid feeders fangs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered all of the items on the requisition.  I should turn them in.")

	AddQuestStepChat(Quest, 5, "Find the Taskmaster at the Crossroads in the Commonlands", 1, "Deliver filled FSR order to the Taskmaster at the crossroads in the Commonlands.", 11, 330260)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have delivered the items on the FSR to the Taskmaster at the crossroads in the Commonlands.")

	UpdateQuestDescription(Quest, "I filled the Far Seas Requisition and delivered the goods to the Taskmaster at the crossroads in the Commonlands.  I have been paid in full for this work.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
