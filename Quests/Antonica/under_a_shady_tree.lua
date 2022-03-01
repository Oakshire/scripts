--[[
    Script Name    : Quests/Antonica/under_a_shady_tree.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.15 03:09:02
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: Landwyn Velamir
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I am looking for some flowers under a shady tree.", 1, 100, "I need to gather flowers for Landwyn. He mentioned they were under a shady tree nearby.", 1943)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Alright.")
	StartConversation(conversation, QuestGiver, Player, "Please hurry!")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the flowers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the flowers for Landwyn.")

	AddQuestStepChat(Quest, 2, "I should return these flowers to Landwyn.", 1, "I should return these flowers to Landwyn before they are wilted.", 1943, 121388)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave Landwyn the flowers.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Landwyn thought the flowers were perfect.")

	UpdateQuestDescription(Quest, "I have picked and delivered the flowers to Landwyn.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
