--[[
    Script Name    : Quests/IsleofRefuge/striking_back_at_the_goblins_mage.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.13 09:09:59
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: Mizan Vaeolin (3250057)
        Preceded by: Gathering Sealant Components
        Followed by: Attack on the Orc Leader
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect 4 Goblin Blood from Gruttooth Brutes.", 4, 70, "I need to collect four goblin blood samples from brutes found in the goblin village on the northwestern part of the island and return them to Mizan.", 178, 3250134,3250123,3250124)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Very good.  The village is located in the northwest portion of the isle.  The others should already be on their way to the village.  You are to provide magical support for the assault.  The sooner you return with the samples, the sooner my teacher can begin to work on the warding spells.")
	Dialog.AddVoiceover("voiceover/english/mizan_vaeoulin/tutorial_island02/mizanvaeoulin010.mp3", 703383333, 2042531315)
    PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Player)
    Dialog.AddOption("I'll be back soon with the four blood samples for you.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I collected 4 Goblin Blood from Gruttooth Brutes.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have four goblin blood samples.")

	AddQuestStepChat(Quest, 2, "I need to take these goblin blood samples to Mizan.", 1, "I need to return to Mizan with these goblin blood samples.", 11, 3250057)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I took the samples to Mizan.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave the blood samples to Mizan.")

	UpdateQuestDescription(Quest, "I was able to collect four goblin blood samples for Mizan and helped with the attacks on the village.  Mizan's teacher Malvonicus should be able to put the samples to good use.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end