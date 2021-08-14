--[[
    Script Name    : Quests/Antonica/fishing_for_bait.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.13 07:08:34
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to find Blarton's lost tin of bait.", 1, 100, "I need to find the lost tin of bait for Blarton. His cousin left it at a camp to the south of Windstalker Village.", 941)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll be back as soon as I can.")
	StartConversation(conversation, QuestGiver, Player, "Thank you, and good luck.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found Blarton's lost tin of bait.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Blarton's bait. Now I need to bring it back to him.")

	AddQuestStepChat(Quest, 2, "I need to return to Blarton and speak with him about his bait.", 1, "I need to return to Blarton with his bait.", 11, 120163)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned the bait to Blarton.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned the bait to Blarton.")

	UpdateQuestDescription(Quest, "I have found Blarton's lost bait and returned it to him.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
