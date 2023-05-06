--[[
	Script Name		:	taking_out_the_trash.lua
	Script Purpose	:	Handles the quest, "Taking Out the Trash"
	Script Author	:	neatz09
	Script Date		:	5/5/2023
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	World Event
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]

local Pohpiks = 1230044

function Init(Quest)
	AddQuestStep(Quest, 1, "Find the trash bags and take them to the platform.", 5, 100, "I must collect the trash bags from the Froglok trash cans and take them to the trash platform.", 10)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Eww... trash.")
    StartConversation(conversation, QuestGiver, Player, "Great, this should be simple. Just gather trash bags from the garbage boxes around the village and bring all the bags back over here to my target platform. Those should make a fine target!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've taken all the trash to the platform.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've brought all the garbage to the platform.")

	AddQuestStepChat(Quest, 2, "Speak to Pohpiks.", 1, "I should let Pohpiks know his targets are ready.", 11, Pohpiks)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I spoke with Pohpiks.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I told Pohpiks that I've gathered the trash... here come the fireworks!")

	UpdateQuestDescription(Quest, "I've gathered trash for Pohpiks to use as target practice.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
