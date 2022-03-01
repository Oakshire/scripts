--[[
    Script Name    : Quests/TheWillowWood/any_messages_for_jendan_.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.15 06:02:22
    Script Purpose : 

        Zone       : TheWillowWood
        Quest Giver: Jendan Greenthorn
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to go to Innkeeper Yeoni.", 1, "I should take Jendan's note to Innkeeper Yeoni in the Willow Wood.", 75, 2370012)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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

function Step1Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I took Jendan's note to Innkeeper Yeoni.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I took Jendan's note to Innkeeper Yeoni.")

	AddQuestStepChat(Quest, 2, "I need to return to Jendan Greenthorn.", 1, "I need to let Jendan know there was no message for him at the inn.", 0, 2370035)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I returned to Jendan Greenthorn.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Jendan Greenthorn.")
	
	UpdateQuestDescription(Quest, "I talked with Innkeeper Yeoni and told Jendan that she didn't have any messages for him.  She said that Jendan asks if he has any messages at least twice a day.  I hope Jendan hears from his brother soon.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	end
	if Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
