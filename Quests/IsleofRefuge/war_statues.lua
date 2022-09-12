--[[
    Script Name    : Quests/IsleofRefuge/war_statues.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.10 07:09:06
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: Nathinia Sparklebright
        Preceded by: Speaking with Nathinia
        Followed by: Venom Sac Collection
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to use my smite spell to destroy 3 war statues.", 3, 100, "I must travel through the northern archway just west of the outpost where I met the Gruttooth invaders.  In the eastern corner of the grove there I should find the mystics worshipping their depraved idols.  I need to use my smite spell to destroy three of the idols.", 372, 3250089)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Thank you.  Be wary of the mystics who guard the idols.  Even without the idols they could prove to be deadly enemies.  May the gods protect you and guide your hand in this task.")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright004.mp3", 3851336954,3648952364)
    PlayFlavor(QuestGiver, "", "", "thanks", 0, 0, Player)
    Dialog.AddOption("Thank you.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've destroyed 3 war statues.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found and managed to destroy three of the goblin idols.  Nathinia should be very pleased.")

	AddQuestStepChat(Quest, 2, "I must speak with Nathinia Sparklebright. ", 1, "I need to return to Nathinia Sparklebright in the outpost and tell her of my victory.", 11, 3250014)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've given news of my victory to Nathinia Sparklebright.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've informed Nathinia of the destruction of the statues.")

	AddQuestStepChat(Quest, 3, "I need to pick up my boots from the bank.", 1, "I need to visit the bank in the village to pick up my boots.", 11,3250036)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I went to the bank to pick up my boots.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I went to the bank in the village to pick up my boots.")

	UpdateQuestDescription(Quest, "With the power of my smite spell I was able to destroy three of the war statues.  With their mystics weakened the goblins should have a much harder time with their assaults on the outpost.")
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
