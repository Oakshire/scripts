--[[
    Script Name    : Quests/Antonica/battle_with_the_timberclaws.lua
    Script Author  : Premierio015
    Script Date    : 2022.05.09 05:05:51
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Slay gnolls in and around Archer Woods.", 12, 100, "I must slay gnolls in and around the Archer Woods until Dancer whistles her song for me to return to her.", 611, 120295, 120296, 121404, 121405)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("You think you can clear all of Archer Woods? I doubt that, but I would be glad to see you try, as would Trusaris.")
	Dialog.AddVoiceover("voiceover/english/verona/antonica/verona009.mp3", 2472618059, 207846586)
	Dialog.AddOption("I shall do my best.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Slew gnolls.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I slew gnolls until Dancer whistled her song for me to return to her.")

	AddQuestStepChat(Quest, 2, "Speak with Dancer.", 1, "I must return to Dancer near the Qeynos Hills Claymore in Antonica.", 11, 120410)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "Spoke to Dancer.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Dancer near the Qeynos Hills Claymore in Antonica.")

	UpdateQuestDescription(Quest, "I fought valiantly against the gnolls in Archer Woods. Dancer has given me her necklace. Upon examination I see that her name must truly be Verona. She must trust me to pass this along.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
