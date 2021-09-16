--[[
    Script Name    : Quests/Antonica/song_to_prexus.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.16 09:09:24
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "Landwyn has asked me to get rid of these mementos by dumping them in the sea from Lonely Isle.", 10, "Landwyn wants me to get rid of all the gifts his love had given him. I should dump them into the sea in the northwest of Antonica.", 2318, 350, 0, -780, 12)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, QuestGiver, Player, "Take it far from this place.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gotten rid of the mementos.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gotten rid of all the gifts.")

	AddQuestStepChat(Quest, 2, "I should return to Landwyn.", 1, "I need to go back and let Landwyn know that my task has been completed.", 11, 121388)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have helped Landwyn.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have helped Landwyn all that I can.")

	UpdateQuestDescription(Quest, "I have disposed of the reminders of Landwyn's heartbreak.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
