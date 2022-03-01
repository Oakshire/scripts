--[[
    Script Name    : Quests/Antonica/sparkly_or_nothing.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.16 09:08:14
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to hunt granitescale basilisks.", 10, 100, "Licha has asked me to hunt granitescale basilisks to get the shiniest scales I can find.", 84, 120028)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, QuestGiver, Player, "Go quickly! And they must be very shiny!")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found the scales.")

	AddQuestStepKill(Quest, 2, "To make these scales even shinier, I could use the oils that come from darkclaw crabs.", 1, 25, "Licha has asked me to hunt granitescale basilisks to get the shiniest scales I can find.", 139, 120118, 120762, 121265)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have made these scales very shiny.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found some very shiny scales.")

	AddQuestStepChat(Quest, 3, "I should take these scales to Licha.", 1, "I found the scales that Licha wanted. I should probably take them to her.", 84, 121308)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have given the scales to Licha.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave Licha the scales.")

	UpdateQuestDescription(Quest, "I have returned the scales to Licha.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


