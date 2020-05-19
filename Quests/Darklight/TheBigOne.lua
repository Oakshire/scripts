--[[
    Script Name    : Quests/Darklight/TheBigOne.lua
    Script Author  : fearfx
    Script Date    : 2017.01.24 07:01:48
    Script Purpose : 

        Zone       : Darklight
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I need Dirzdia's lure from Smolderfin.", 1, 100, "Dirzdia wants me to kill Smolderfin and bring back the lure he stole.", 591)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have Dirzdia's lure.")

	AddQuestStepChat(Quest, 2, "I need to bring Dirzdia her lure.", 1, "Dirzdia wants me to kill Smolderfin and bring back the lure he stole.", 591, 140025)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Dirzdia her lure.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have brought Dirzdia her lure.")

	UpdateQuestDescription(Quest, "I have slain Smolderfin for Dirzdia and brought her the lure he stole.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end