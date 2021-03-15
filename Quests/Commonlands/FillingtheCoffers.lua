--[[
	Script Name		:	filling_the_coffers.lua
	Script Purpose	:	Handles the quest, "Filling the Coffers"
	Script Author	:	premierio015
	Script Date		:	14.03.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Captain Feralis
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to collect Zaikik's taxes", 1, 100, "I need to collect taxes from the ratongas and kerrans south west of the Crossroads.", 2167)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "Good. I've had too many softies under my watch. Here's a list of their names and how much they owe. I'll be here when you're done.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected Zaikik's taxes.")

	AddQuestStep(Quest, 2, "I need to collect Kadek's taxes", 1, 100, "I need to collect taxes from the ratongas and kerrans south west of the Crossroads.", 2167)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected Kadek's taxes.")

	AddQuestStep(Quest, 3, "I need to collect Mnemir's taxes", 1, 100, "I need to collect taxes from the ratongas and kerrans south west of the Crossroads.", 2167)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected Mnemir's taxes.")

	AddQuestStepChat(Quest, 4, "I need to collect Rootka's taxes", 1, "I need to collect taxes from the ratongas and kerrans south west of the Crossroads.", 2167, 330052)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have collected Rootka's taxes.")

	AddQuestStep(Quest, 5, "I need to collect Maharai's taxes", 1, 100, "I need to collect taxes from the ratongas and kerrans south west of the Crossroads.", 2167)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have collected Maharai's taxes.")

	AddQuestStepChat(Quest, 6, "I need to collect Leldwana's taxes", 1, "I need to collect taxes from the ratongas and kerrans south west of the Crossroads.", 2167, 330061)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have collected Leldwana's taxes.")

	AddQuestStep(Quest, 7, "I need to collect Entui's taxes", 1, 100, "I need to collect taxes from the ratongas and kerrans south west of the Crossroads.", 2167)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have collected Entui's taxes.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the taxes.")

	AddQuestStepChat(Quest, 8, "I need to return to Captain Feralis", 1, "Now that I have done as he asked, I should return to Captain Feralis.", 10, 330184)
	AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "I have given Captain Feralis the tax money.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Captain Feralis.")

	UpdateQuestDescription(Quest, "I have given the collected taxes to Captain Feralis.")
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
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
