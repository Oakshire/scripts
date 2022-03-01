--[[
    Script Name    : Quests/Antonica/she_will_be_a_shining_petal.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.15 04:09:54
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill klicnik warriors.", 10, 100, "Landwyn has asked me to collect thick klicnik shells from klicnik warriors.", 1808, 121369, 121440, 121445, 121369, 120253, 120373, 120367)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, QuestGiver, Player, "Wonderful! Thank you, friend.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gathered all the klicnik shells.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered the klicnik shells.")

	AddQuestStepChat(Quest, 2, "I should return to Landwyn.", 1, "I should return these shells to Landwyn.", 1808, 121388)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned the shells to Landwyn.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given Landwyn the shells.")

	UpdateQuestDescription(Quest, "I have collected the klicnik shells for Landwyn.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


