--[[
	Script Name		:	no_risk_no_reward.lua
	Script Purpose	:	Handles the quest, "No Risk, No Reward"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	17.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to find a clump of ordinary looking stone", 1, 100, "Madam Vi wants me to find a clump of stone for her from inside the Wailing Caves.", 1125)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I am always careful.")
	StartConversation(conversation, QuestGiver, Player, "Be careful, those caves are dangerous!")
end



function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found a clump of stone.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have the clump of stone for Madam Vi.")

	AddQuestStepChat(Quest, 2, "I should return to Madam Vi", 1, "I found a clump of stone inside the Wailing Caves and should return to Madam Vi at the Crossroads.", 11, 330179)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave Madam Vi the clump of stone.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I took the stone to Madam Vi at the Crossroads.")

	UpdateQuestDescription(Quest, "I brought the clump of stone to Madam Vi at the Crossroads.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
