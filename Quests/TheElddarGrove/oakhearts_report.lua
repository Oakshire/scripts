--[[
    Script Name    : Quests/TheElddarGrove/oakhearts_report.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.10 12:05:49
    Script Purpose : 

        Zone       : TheElddarGrove
        Quest Giver: Pathfinder Oakheart
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Rysian Gladewalker.", 1, "I must deliver a patrol report to Rysian Gladewalker in the great elddar tree, Arbos.", 11, 2070040)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/pathfinder_oakheart/qey_elddar/pathfinderoakheart001.mp3", "", "thanks", 3085379068, 1503460173, Player)
	AddConversationOption(conversation, "I'll go find him.")
	StartConversation(conversation, QuestGiver, Player, "Ah, thank you!  My order will always remember your help from this.  Now, hurry and take this report to Master Gladewalker.  Look for the largest tree in the grove.  Its name is Arbos.  It is the last true living Elddar tree.  You'll find Master Gladewalker there.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke with Rysian Gladewalker.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've delivered the patrol report to Rysian Gladewalker.")

	AddQuestStepChat(Quest, 2, "I need to return to Pathfinder Oakheart.", 1, "I must notify Pathfinder Oakheart his report was submitted.", 11, 2070056)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I returned to Pathfinder Oakheart.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've notified Pathfinder Oakheart his report was submitted.")

	UpdateQuestDescription(Quest, "I delivered the daily patrol report to Rysian Gladewalker, at Pathfinder Oakheart request. Oakheart was relieved he didn't have to diminish his resources to deliver the report.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
		end
end
