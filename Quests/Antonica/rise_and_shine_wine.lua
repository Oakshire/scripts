--[[
    Script Name    : Quests/Antonica/rise_and_shine_wine.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.04 08:09:45
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must gather some goo.", 5, 50, "I must kill risen protectors.", 8, 120449, 121497)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, QuestGiver, Player, "Bring it straight back to me.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gathered some goo.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered enough goo.")

	AddQuestStepChat(Quest, 2, "I should speak with Haddek again.", 1, "I must speak to Haddek.", 8, 120281)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Haddek.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Haddek.")

	UpdateQuestDescription(Quest, "I have gathered enough goo for Haddek's wine. He was quite grateful and is very excited to complete his brew.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

