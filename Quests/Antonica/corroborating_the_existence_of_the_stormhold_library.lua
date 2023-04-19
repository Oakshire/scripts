--[[
    Script Name    : Quests/Antonica/corroborating_the_existence_of_the_stormhold_library.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.01 10:04:40
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I need to find the Stormhold library.", 1, "I need to find the library inside Stormhold to verify Timothus Yelrow's information.", 11, 3, -26, -129, 12)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone("Stormhold")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
 	Dialog.AddDialog("You?  Hmm ... you do look sufficiently clever in a peasant-like way.  Perhaps you could survive a minute or two inside Stormhold.  I will gladly pay you if you can penetrate Stormhold and return to me with information that verifies the existence of the library.")
    Dialog.AddVoiceover("voiceover/english/timothus_yerlow/antonica/timothusyelrow003.mp3", 911702811, 1037330518)
    PlayFlavor(QuestGiver,"","","ponder",0,0,Player)
	Dialog.AddOption("I'll find it.  A library doesn't have too many places to hide.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the library.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the library inside Stormhold.")
    UpdateQuestZone("Antonica")

	AddQuestStepChat(Quest, 2, "I need to return to Timothus Yelrow.", 1, "I need to return to Timothus Yelrow to tell him of my findings.", 11, 120299)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I told Timothus Yelrow what I found.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I told Timothus Yelrow of my findings in the library.")

	UpdateQuestDescription(Quest, "I was able to find the library in Stormhold and provided Timothus Yelrow with information to verify what he previous heard.  It looks like Timothus has plans concerning the uncovered library.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

