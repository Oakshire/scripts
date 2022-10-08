--[[
    Script Name    : Quests/Antonica/the_whereabouts_of_clan_mcmarrin.lua
    Script Author  : Premierio015
    Script Date    : 2022.08.17 08:08:47
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I should search for a clue in the Thundering Steppes.", 10, "I should find some clue to the whereabouts of Clan McMarrin somewhere in the Thundering Steppes.", 11, 1345, -2, -81, 12)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
    PlayFlavor(QuestGiver,"","","agree",0,0,Player)
	Dialog.AddDialog("You would?  Aye, that is good to hear.  I like Qeynos and all, but us barbarians need a place we can call our own, you know?")
	Dialog.AddOption("I can understand that.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I should return to Tanen Danos.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found a journal amidst the wreckage of a settlement while exploring the Thundering Steppes.")

	AddQuestStepChat(Quest, 2, "I should return to Tanen Danos.", 1, "I should return to Tanen Danos and show him this journal.", 195, 120289)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I sold the journal to Tanen Danos.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I sold the journal to Tanen Danos.")

	UpdateQuestDescription(Quest, "I found a journal of Clan McMarrian at a destroyed site in the Thundering Steppes. I sold the journal to Tanen Danos as he was eager to learn the fate of the clan. I don't think there is much hope for the clan considering the mess I found.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
