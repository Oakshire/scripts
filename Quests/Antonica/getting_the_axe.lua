--[[
    Script Name    : Quests/Antonica/getting_the_axe.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.08 07:08:15
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to hunt Sabertooth miners.", 10, 100, "I need to hunt Sabertooth miners inside of Blackburrow.", 1643, 170010)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Yes. You can help us. The Sabertooth clan is getting ore from somewhere in the hills and I need you to find out where. Bring me some mining picks to prove that you found the mine.")
	Dialog.AddVoiceover("voiceover/english/squire_kivan/antonica/squirekivan005.mp3", 1777480870, 844135854)
    PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Player)
	Dialog.AddOption("Thank you, I will do my best.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found ten Sabertooth mining picks.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found ten Sabertooth mining picks.")

	AddQuestStepChat(Quest, 2, "I need to return to Squire Kivan.", 1, "I need to return to Squire Kivan in Antonica.", 11, 120431)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Squire Kivan the ten Sabertooth mining picks.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given Squire Kivan the ten Sabertooth mining picks.")

	UpdateQuestDescription(Quest, "I found the ten Sabertooth mining picks.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
