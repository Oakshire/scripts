--[[
    Script Name    : Quests/Antonica/door_to_door_delivery.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.22 08:08:26
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Deliver these rugs to Lord Bennet.", 1, "I must deliver rugs to the Keep of the Gnollslayers to the south.", 123, 850143)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Alright.")
	StartConversation(conversation, QuestGiver, Player, "Yeah, things.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have given the rugs to Lord Bennet.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have delivered the rugs to the Keep of the Gnollslayers.")

	AddQuestStepChat(Quest, 2, "Speak with Hartok.", 1, "I must speak to Hartok.", 11, 121309)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken to Hartok.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Hartok.")

	UpdateQuestDescription(Quest, "I have delivered Hartok's rugs. I didn't see anything that should make Hartok nervous. Perhaps when I speak to him again he will explain what is going on.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

