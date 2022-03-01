--[[
    Script Name    : Quests/Commonlands/VentarTKal.lua
    Script Author  : premierio015
    Script Date    : 2018.12.30 10:12:44
    Script Purpose : 

        Zone       : Commonlands
        Quest Giver: Captain Feralis
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Ventar T'Kal", 1, 11, 330214)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Ventar T'Kal.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Ventar T'Kal.")

	UpdateQuestDescription(Quest, "I have delivered the treated root samples to Ventar.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


function Accepted(Quest, QuestGiver, Player)
    SummonItem(Player, 14661, 1)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, QuestGiver, Player, "Good. And thanks.")
end



