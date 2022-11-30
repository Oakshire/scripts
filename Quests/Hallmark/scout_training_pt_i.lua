--[[
    Script Name    : Quests/Hallmark/scout_training_pt_i.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.29 01:11:47
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: Councilor Vemerik
        Preceded by: Level 7
        Followed by: Scout Training, pt II
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill five rock adders in the Forest Ruins.", 5, 100, "I need to kill five rock adders in the Forest Ruins.", 91, 8270017,8270002)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("How about the Ruins, hmmm? Why don't you try sneaking up on the rock adders that haunt that old place?  Unless your skills aren't up to it, which I'd understand.")
	Dialog.AddVoiceover("voiceover/english/counselor_vemerik/qey_north/counselor_vemerik004.mp3", 34105284, 2609408402)
    PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Player)
    Dialog.AddOption("I'm MORE than up to it! I'll return once its done and show you!")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed five rock adders in the Forest Ruins.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed the rock adders.")

	AddQuestStepChat(Quest, 2, "I need to speak with Vemerik in North Qeynos.", 1, "I should let Vemerik in North Qeynos know I've done as he advised.", 11,2220485)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Vemerik.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have told Vemerik that I killed the forest scavengers.")

	AddQuestStepChat(Quest, 3, "I need to speak with Dawson in North Qeynos.", 1, "Vemerik has told me to speak with Dawson in North Qeynos as if I was a sharp bard.", 11, 2220113)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've spoken with Dawson.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have beaten Dawson at a game of words.")

	AddQuestStepChat(Quest, 4, "I need to speak with Vemerik in North Qeynos.", 1, "I should tell Vemerik that I spoke with Dawson.", 11, 2220485)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I've spoken with Vemerik.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have informed Vemerik that Dawson was beaten.")

	UpdateQuestDescription(Quest, "I've learned what it is to be a rogue and a bard, but there will be more to learn in the future.")
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