--[[
    Script Name    : Quests/IsleofRefuge/striking_back_at_the_goblins_fighter.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.13 09:09:10
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: Braksan Steelforge (3250017)
        Preceded by: Refugee Rescue
        Followed by: Removing the Orc Menace 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect 4 Flint Head Spears.", 4, 80, "I need to kill Gruttooth Brutes to collect 4 Flint Head Spears", 287, 3250124)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("The others will rely on you to handle most of the fighting but I know you can handle it.  You're a brave fighter after all!  Go, meet with the others in the village and give those goblins what they deserve!  While you are at it friend, fetch me some flint head spears that the goblins carry.  I figure it's the least those buggers owe me, considering all of my gear they've stole or broke in the past few weeks.  Quickly now!  Time is a wasting!")
	Dialog.AddVoiceover("voiceover/english/braksan_steelforge/tutorial_island02/braksansteelforge010.mp3", 2848196169,4101313986)
    PlayFlavor(QuestGiver, "", "", "nod", 0, 0, Player)
    Dialog.AddOption("I'll head out right away.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I collected 4 Flint Head Spears.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I collected 4 Flint Head Spears.")

	AddQuestStepChat(Quest, 2, "I need to talk to Braksan.", 1, "I need to get these Flint Head Spears back to Braksan.", 11, 3250017)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I spoke to Braksan.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave Braksan the Flint Head Spears.")

	UpdateQuestDescription(Quest, "I joined with others who were attacking the goblin village.  I was able to collect up four flint head spears for Braksan like he asked and deliver them to him.  He was very appreciative of my work and gave me a tunic in payment.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
