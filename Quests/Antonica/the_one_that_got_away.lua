--[[
    Script Name    : Quests/Antonica/the_one_that_got_away.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.13 07:08:52
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "Find a fish by the name of Ol' One Eye.", 1, 100, "Blarton Blumble in Windstalker Village has asked me to find Ol' One Eye somewhere in the waters nearby.", 83)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "See you soon!")
	StartConversation(conversation, QuestGiver, Player, "Thanks again, friend. Please, don't try to catch or harm him. I've been waiting a long time to catch up with him and I want to catch him myself. Good luck with the search!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found Ol' One Eye.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have located &quot;Ol' One Eye.&quot;")

	AddQuestStepChat(Quest, 2, "Return to Blarton Blumble.", 1, "I must tell Blarton Blumble in Windstalker Village that I have located Ol' One Eye.", 11, 120163)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have told Blarton about Ol' One Eye.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to Blarton and told him that I found Ol' One Eye.")

	UpdateQuestDescription(Quest, "I have searched the waters of Antonica and found a fish named Ol' One Eye for Blarton. He was very grateful for all of my help.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

