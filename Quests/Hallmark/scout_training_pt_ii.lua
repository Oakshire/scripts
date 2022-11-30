--[[
    Script Name    : Quests/Hallmark/scout_training_pt_ii.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.29 01:11:15
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: Councilor Vemerik
        Preceded by: Scout Training, pt I
        Followed by: Path of the (Scout Class)
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill five forest scavengers in the Forest Ruins.", 5, 100, "I need to kill five forest scavengers in the Forest Ruins in order to learn about predators", 91, 8270037,8270015)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Hmph!  I like it the way I said it.  Anyways... I think you might find an interesting time tracking down the creepy crawlies that waylay the unobservant.  Take the idea of what a predator does for a living and track down those spiders.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik015.mp3", 3018112745, 368427142)
    PlayFlavor(QuestGiver, "", "", "sigh", 0, 0, Player)
    Dialog.AddOption("I'll learn what I can from these spiders. They shouldn't be a problem.")	
    Dialog.AddOption("Oof. Spiders. It HAD to be spiders?!")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed five forest scavengers in the Forest Ruins.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed the forest scavengers as Vemerik advised.")

	AddQuestStepChat(Quest, 2, "I need to speak with Vemerik in North Qeynos.", 1, "I should let Vemerik know what I've done.", 11, 2220485)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Vemerik.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've told Vemerik that I've killed the scavengers.")

	AddQuestStepChat(Quest, 3, "Speak to Sentry Acton at the eastern end of Antonica on the southernmost bridge", 1, "Vemerik has sent me out to Antonica to tell let one of the guards by the bridge know that his sister is sick but she's in good hands.", 11,121413)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've spoken with Sentry Acton next to the bridge.")
	UpdateQuestTaskGroupDescription(Quest, 3, "Vemerik was updated on what the guard said.")

	AddQuestStepChat(Quest, 4, "I need to speak with Vemerik in North Qeynos.", 1, "I should tell Vemerik that I spoke with the corrupt guard.", 11, 2220485)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I've spoken with Vemerik.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have informed Vemerik that the corrupt guard threatened him.")

	UpdateQuestDescription(Quest, "I've learned how uses my skills in better ways.  I've decided to focus on one type of skill in order to excel in my chosen field.  I have only Vemerik to thank for this.")
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
