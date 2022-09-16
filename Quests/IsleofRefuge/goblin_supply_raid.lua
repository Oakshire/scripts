--[[
    Script Name    : Quests/IsleofRefuge/goblin_supply_raid.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.10 07:09:40
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: Brasken Ironforge
        Preceded by: Speaking with Brasken
        Followed by: Refugee Rescue
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, " I need to kill four goblin supply runners.", 4, 100, "I need to kill four goblin supply runners at one of their supply camps west of the outpost.", 91, 3250077)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Now we're talking!  Find the supply camp and look for goblin supply runners in the area.  If you can kill several of those varmints it should buy the mages enough time to take care of the supply crates. ")
	Dialog.AddVoiceover("voiceover/english/braksan_steelforge/tutorial_island02/braksansteelforge004.mp3", 1964849884,396353877)
    PlayFlavor(QuestGiver, "", "", "happy", 0, 0, Player)
    Dialog.AddOption("Don't worry, I'll take care of them for you.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've killed four supply runners.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found and managed to kill four of the goblin supply runners.  Brasken should hear about this development.")

	AddQuestStepChat(Quest, 2, "I need to report back to Braksan.", 1, "I need to return to Braksan and tell him of my deeds.", 11, 3250017)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've given news of my victory to Braksan Steelforge.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've reported back to Braksan about the supply runners.")

	AddQuestStepChat(Quest, 3, "I need to pick up my boots from the bank.", 1, "I need to visit the bank in the village to pick up my boots.", 11,3250036)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I went to the bank to pick up my boots.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I went to the bank in the village to pick up my boots.")

	UpdateQuestDescription(Quest, "With the supply runners I killed, the mages shouldn't have much of a problem destroying the supply crates.  Hopefully this combined effort will set the goblin advance back a few steps.")
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
