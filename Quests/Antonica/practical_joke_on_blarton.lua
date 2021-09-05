--[[
    Script Name    : Quests/Antonica/practical_joke_on_blarton.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.04 08:09:36
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must deliver the wine to Blarton.", 1, "Deliver the wine to Blarton Blumble in Windstalker Village.", 309, 120163)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I hope so.")
	StartConversation(conversation, QuestGiver, Player, "This is going to be great!")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have delivered the wine to Blarton.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have delivered the wine.")

	AddQuestStepChat(Quest, 2, "I need to report to Haddek.", 1, "I need to report back to Haddek.", 11, 120281)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have reported to Haddek.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken to Haddek.")

	UpdateQuestDescription(Quest, "I delivered the wine to Blarton. He didn't look like he enjoyed the wine much, but somehow I don't think that is what Haddek had in mind anyway.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

