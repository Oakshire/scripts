--[[
    Script Name    : Quests/IsleofRefuge/destroying_the_goblins_supplies.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.10 08:09:07
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: Mizan Vaeolin
        Preceded by: Speaking with Mizan
        Followed by: Gathering Sealant Components
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to destroy five supply crates with my Lightning Burst spell.", 5, 100, "I need to raid the goblin supply camps west of the outpost and destroy five supply crates with my Lightning Burst spell.", 566, 3250067)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Excellent.  Others are heading towards the camp now.  Use your lightning burst spell to destroy the goblin supply crates.  You must ruin several of the crates, if you are successful you shall receive a reward.  Please report back to me when you have completed this assignment.")
	Dialog.AddVoiceover("voiceover/english/mizan_vaeoulin/tutorial_island02/mizanvaeoulin004.mp3", 2611909866, 614181676)
    PlayFlavor(QuestGiver, "", "", "nod", 0, 0, Player)
    Dialog.AddOption("I will take care of the supply crates.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I destroyed five supply crates.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I destroyed five supply crates.")

	AddQuestStepChat(Quest, 2, "I need to report back to Mizan.", 1, "I need to return to Mizan in the outpost and report the crates' destruction to him.", 11, 3250057)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I reported back to Mizan.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I reported back to Mizan.")

	AddQuestStepChat(Quest, 3, "I need to visit the bank to pick up my boots.", 1, "I need to go to the bank in the village to pick up my boots.", 11, 3250036)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I visited the bank to pick up my boots.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've gone to the bank in the village to pick up my boots.")

	UpdateQuestDescription(Quest, "Mizan was grateful for my help and rewarded me with a pair of boots he placed in my bank.  Hopefully my work contributed to slow down the goblins attacks.")
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
