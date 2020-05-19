--[[
    Script Name    : Quests/Darklight/SoHotYouCatchThemCooked.lua
    Script Author  : fearfx
    Script Date    : 2017.01.24 06:01:15
    Script Purpose : 

        Zone       : Darklight
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepHarvest(Quest, 1, "I need to catch eight seared char.", 8, 100, "I need some seared char for Dirzdia.", 2541, 37177)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have caught the seared char.")

	AddQuestStepChat(Quest, 2, "I need to bring these fish back to Dirzdia.", 1, "I need some seared char for Dirzdia.", 2541, 140025)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have brought the fish to Dirzdia.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the seared char for Dirzdia.")

	UpdateQuestDescription(Quest, "I have brought Dirzdia the seared char she wanted.")
	while HasItem(Player, 37177, 1) do
	    RemoveItem(Player, 37177)
	end
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