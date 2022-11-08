--[[
    Script Name    : Quests/Hallmark/mage_training_part_2.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.06 07:11:11
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Willim in Nettleville.", 1, "I need to speak with Willim in Nettleville and try to cheer him up.", 11, 2330036)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("I got it!  I know a lad named Willim Barclay who lives in Nettleville. The other day, I noticed he was in a dismal mood, but I don't know why. Go talk with him and see if you can cheer him up.")
	Dialog.AddVoiceover("voiceover/english/magister_niksel/qey_south/magister_niksel015.mp3", 2423582680, 3203696326)
    PlayFlavor(QuestGiver, "", "", "doh", 0, 0, Player)
    Dialog.AddOption("I suppose I can try my own \"charm\". I'll go speak with Willim.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've spoken with Willim.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've \"convinced\" Willim to have a little more confidence.")

	AddQuestStepChat(Quest, 2, "I need to speak with Magister Niksel in South Qeynos.", 1, "I should let Magister Niksel in South Qeynos know the good news about Willim.", 11, 2310376)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with the Magister.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've let Niksel know how I \"charmed\" Willim.")

	AddQuestStepKill(Quest, 3, "I must kill one klicnik mite in Antonica.", 1, 100, "I need to collect an eyeball from a Klicnik mite in Antonica.", 91, 120067)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed one klicnik mite.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've collected an eyeball from a Klicnik mite.")

	AddQuestStepChat(Quest, 4, "I need to speak with Magister Niksel in South Qeynos.", 1, "I should bring this eyeball back to Niksel in South Qeynos.", 11, 2310376)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I've spoken with the Magister.")
	UpdateQuestTaskGroupDescription(Quest, 4, "It seems Niksel wanted the eyeball for his lunch...")

	UpdateQuestDescription(Quest, "I've only one task left to do now that I've completed all of Niksel's other lessons!")
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
