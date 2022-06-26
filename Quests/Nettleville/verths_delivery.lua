--[[
    Script Name    : Quests/Nettleville/verths_delivery.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.24 12:06:59
    Script Purpose : 

        Zone       : Nettleville
        Quest Giver: Verth
        Preceded by: None
        Followed by: 
--]]

require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should meet Aves.", 1, "I should get down to the Nettleville Dock and meet up with Verth's brother, Aves.", 11, 2330008)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Player)
	Dialog.AddDialog("Good choice!  My brother's name is Aves and he doesn't like to wait.  Hurry along now!")
	Dialog.AddVoiceover("voiceover/english/verth/qey_village01/verth002.mp3", 4028969194, 2237905916)
	Dialog.AddOption("I'll be back shortly.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I met up with Aves.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I met Verth's brother, Aves, down by the docks.")
	AddQuestStepChat(Quest, 2, "I need to decide what to do with this contraband.", 1 , "I can deliver this crate of Freeport stout to Verth as discussed OR find authorities interested in this contraband.", 655, 2330051,2330022)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I delivered the contraband.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I delivered the contraband.  Did I make the right decision?")

	UpdateQuestDescription(Quest, "I have gotten rid of the contraband given to me by Aves. I wonder if I did the right thing.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
