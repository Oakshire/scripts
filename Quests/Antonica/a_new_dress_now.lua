--[[
    Script Name    : Quests/Antonica/a_new_dress_now.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.16 06:08:58
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: Licha
        Preceded by: 
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "I need to buy Licha a new dress.", 1, 100, "Licha wants a new, fancy dress from some merchant in Thundering Steppes.", 280,  130013)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will return shortly.")
	StartConversation(conversation, QuestGiver, Player, "And be quick about it!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I bought Licha a new dress.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I bought a new dress for Licha.")

	AddQuestStepChat(Quest, 2, "I should take this dress to Licha.", 1, "Now that I bought the dress, I should give it to Licha", 280, 121308)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave Licha her new dress.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave Licha her dress.")
    if HasItem(Player, 130013) then
    RemoveItem(Player, 130013)
    end
	UpdateQuestDescription(Quest, "I found Licha a new dress.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

