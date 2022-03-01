--[[
	Script Name		:	bone_dust.lua
	Script Purpose	:	Handles the quest, "Bone Dust"
	Script Author	:	premierio015
	Script Date		:	12.11.2020
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Graveyard
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need 100 bone fragments from the undead.", 100, 100, "Durkix would like me to collect some bone fragments for him.", 92)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	conversation = CreateConversation()
        AddConversationOption(conversation, "All right.")
        StartConversation(conversation, QuestGiver, Player, "Great! I'll be summoning these things in no time! Be quick!")
end


function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end


function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the bone fragments.")

	AddQuestStepChat(Quest, 2, "I need to give these bone fragments to Durkix.", 1, "Durkix would like me to collect some bone fragments for him.", 92, 1250037)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Durkix the bone fragments.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gotten the bone fragments for Durkix.")

	UpdateQuestDescription(Quest, "I have collected the bone fragments for Durkix. He thanked me for my help.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
