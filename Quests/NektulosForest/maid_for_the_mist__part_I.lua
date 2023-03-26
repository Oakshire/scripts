--[[
    Script Name    : Quests/NektulosForest/maid_for_the_mist__part_I.lua
    Script Author  : Premierio015
    Script Date    : 2023.03.23 09:03:20
    Script Purpose : Access Quest "Maid for the Mist Part I" 

        Zone       : NektulosForest
        Quest Giver: Daisy Winterhope
        Preceded by: None
        Followed by: 
--]]

require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to obtain 25 Nerius crab carapaces.", 25, 25, "I need to obtain 25 crab carapaces in Nektulos and then tell Daisy Winterhope.", 141, 1790036, 1790342)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	 Dialog.AddVoiceover("voiceover/english/daisy_winterhope/hallmark/sea_of_mist/winterhope_dialog006.mp3", 4126545806, 2664999676)
	Dialog.AddOption("I'll be back.")
	Dialog.AddDialog("Great!  What I need first off are some ironshell carapaces.  You can get them off them Nerius crabs.  About twenty-five would protect the hull.  Let me know when you've got those, and then we'll see if we need anything else.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have obtained 25 Nerius crab carapaces.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have obtained 25 crab carapaces and need to tell Daisy Winterhope in Nektulos.")

	AddQuestStepChat(Quest, 2, "I must return to Daisy Winterhope in Nektulos with the crab carapaces.", 1, "I must return to speak with Daisy Winterhope in Nektulos.", 11, 1790042)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have returned to Daisy Winterhope in Nektulos with the crab carapaces.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Daisy Winterhope in Nektulos.")

	AddQuestStepKill(Quest, 3, "I must obtain 13 owlbear sinews for Daisy Winterhope in Nektulos.", 13, 25, "I need to obtain 13 ash owlbear sinews in Nektulos and then tell Daisy Winterhope.", 139, 1790131)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have obtained 13 owlbear sinews for Daisy Winterhope in Nektulos.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have obtained 13 ash owlbear sinews in Nektulos and must tell Daisy Winterhope.")

	AddQuestStepChat(Quest, 4, "I obtained 13 owlbear sinews and need to return to Daisy Winterhope in Nektulos.", 1, "I must return to speak with Daisy Winterhope in Nektulos.", 11, 1790042)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I returned to Daisy Winterhope in Nektulos with the owlbear sinews.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have spoken with Daisy Winterhope in Nektulos.")

	UpdateQuestDescription(Quest, "I have obtained 25 Nerius crab carapaces and 13 ash owlbear sinews and need to tell Daisy Winterhope in Nektulos.  I hope this is enough for passage on her ship.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
