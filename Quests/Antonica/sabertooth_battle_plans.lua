--[[
    Script Name    : Quests/Antonica/sabertooth_battle_plans.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.10 09:08:23
    Script Purpose : 

        Zone       : Antonica, Blackburrow
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to hunt down a captain of the gnolls that may hold the battle plans. ", 1, 100, "I need to find the Sabertooth battle plans deep in the heart of Blackburrow where canine tacticians mingle.", 75, 170046)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("As of late, the gnolls have become more organized. They are marching in formations and scouting the surrounding areas for places to attack.")
	Dialog.AddVoiceover("voiceover/english/sir_jeager/antonica/sirjeager002.mp3", 48860008, 510466598)
	Dialog.AddOption("What does this mean?", "Accept2")
	Dialog.Start()

end

function Accept2(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("It means that they have a lead tactician. Return to the cave you found and bring me back their battle plans.")
	Dialog.AddVoiceover("voiceover/english/sir_jeager/antonica/sirjeager003.mp3", 3921562524, 1533728140)
	PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Player)
	Dialog.AddOption("I will do this immediately.")
	Dialog.Start()

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found the Sabertooth battle plans.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found the Sabertooth battle plans.")

	AddQuestStepChat(Quest, 2, "I need to return to Sir Jeager.", 1, "I need to return to Sir Jeager in Antonica.", 11, 120432)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Sir Jeager the Sabertooth battle plans.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given Sir Jeager the Sabertooth battle plans.")

	UpdateQuestDescription(Quest, "I have found the Sabertooth battle plans.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

