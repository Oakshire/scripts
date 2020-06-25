--[[
	Script Name		:	FeathersforGherrana.lua
	Script Purpose	:	Handles the quest, "Feathers for Gherrana"
	Script Author	:	jakejp
	Script Date		:	6/7/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Gherrana Cobbleblork
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect Kragploom aviak feathers.", 10, 100, "I need to collect some healthy Kragploom aviak feathers for Gherrana, a gnome at the Highland Outposts.", 151, 1080073, 1080075, 1080076, 1080079, 1080081, 1080084, 1080252, 1080253, 1080255, 1080256, 1080338, 1080339, 1080343, 1080344, 1080346, 1080349, 1080352, 1081101)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected several Kragploom aviak feathers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected several Kragploom aviak feathers for Gherrana.")

	AddQuestStepChat(Quest, 2, "I need to speak with Gherrana at the Highland Outposts.", 1, "I need to bring the Kragploom scavenger feathers back to Gherrana.", 11, 1081120)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I spoke with Gherrana.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave Gherrana the feathers.")

	UpdateQuestDescription(Quest, "I brought back a pile of Kragploom aviak feathers for Gherrana. Now she can continue work on her flying contraption... or stuff a down pillow.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "", "", "", 0, 0, Player)
		AddConversationOption(conversation, "Off I go!")
	StartConversation(conversation, QuestGiver, Player, "Splendid! You might have an easier time getting them than I did. When I asked the Kragplooms themselves, they tried to eat me! Can you believe that! Me! I don't taste very good... At least I don't think I do. Anyways I'll need a great deal of feathers, so you better start now. Oh, and you will be fully compensated for your efforts.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end