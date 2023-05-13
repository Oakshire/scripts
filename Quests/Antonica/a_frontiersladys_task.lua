--[[
    Script Name    : Quests/Antonica/a_frontiersladys_task.lua
    Script Author  : Premierio015
    Script Date    : 2022.05.09 04:05:34
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak to Sighard Sayer.", 1, "I must run to Sayer's Outfitters in Antonica and speak to Sighard Sayer.", 11, 120283)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("I prefer the term frontierslady, but who am I to argue with a legendary adventurer. Please take this note to Sighard Sayer, proprietor of Sayer's Outfitters, the frontier trading post just to the north of here.")
	Dialog.AddVoiceover("voiceover/english/verona/antonica/verona002.mp3", 4018838958, 826695955)
	Dialog.AddOption("I will find Sighard and see that he gets the note.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Spoke to Sighard Sayer.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I made it to Sayer's Outfitters and spoke to Sighard.")

	AddQuestStepChat(Quest, 2, "Speak to Dancer.", 1, "I must return to Dancer near the Qeynos Hills Claymore in Antonica.", 364, 120410)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Spoke to Dancer.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Dancer near the Qeynos Hills Claymore in Antonica.")

	AddQuestStep(Quest, 3, "Inspect the dummy.", 1, 100, "I must place the arrow onto the training dummy with a green arrow painted on it found in Archer Woods.", 11)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Inspected the dummy.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I placed the arrow onto the dummy with a green arrow painted on it found in Archer Woods.")

	AddQuestStepChat(Quest, 4, "Speak to Dancer.", 1, "I must return to Dancer near the Qeynos Hills Claymore in Antonica.", 11, 120410)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "Spoke to Dancer.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I returned to Dancer near the Qeynos Hills Claymore in Antonica.")

	UpdateQuestDescription(Quest, "I performed some errands for the outlander named Dancer. She would not mention what it was all about, but it was very curious.")
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


