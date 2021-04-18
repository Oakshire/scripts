--[[
	Script Name		:	Quests/Commonlands/AnAcquisition.lua
	Script Purpose	:	Handles the quest, "An Acquisition"
	Script Author	:	premierio015
	Script Date		:	17.04.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Ventar T'Kal
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to intercept the Ree runner and take his shipping receipt", 1, 100, "Ventar would like me to acquire the package the Ree orcs had shipped into the Commonlands.", 374, 330218)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "I know you will. Bring me the shipment as soon as you have it.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have acquired the shipping receipt.")
    
	AddQuestStepObtainItem(Quest, 2, "I need to travel to the Blackshield docks and exchange the shipping receipt for the package the runner was sent to get", 1, 100, "Ventar would like me to acquire the package the Ree orcs had shipped into the Commonlands.", 399, 2513)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have acquired the package.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have acquired the orcs' package.")

	AddQuestStepChat(Quest, 3, "I need to return to Ventar", 1, "Now that I have done as he asked, I should return to Ventar.", 11, 330214)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Ventar.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Ventar.")

	UpdateQuestDescription(Quest, "I acquired the Ree package and brought it to Ventar. He was pleased.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

