--[[
    Script Name    : Quests/Antonica/how_did_their_garden_grow.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.17 03:09:24
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: Darmen Sproutmore
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I should go to Stormhold to find the atrium.", 10, "I should go to Stormhold and find out for Darmen how the Knights provided food for themselves.", 11,  -55, -25, -100, 15)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Stormhold")
end

function Accepted(Quest, QuestGiver, Player)
    PlayFlavor(QuestGiver, "", "", "", 0, 0, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("That's very generous of you.  I'm curious to a fault, you know.  However ... if you do go into Stormhold, please use caution.")
	Dialog.AddVoiceover("voiceover/english/darmen_sproutmore/antonica/darmensproutmore003.mp3", 1491369381, 2303497363)
    PlayFlavor(QuestGiver, "", "", "applaude", 0, 0, Player)
	Dialog.AddOption("Thank you for the concern.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the atrium.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found an atrium in Stormhold where it looks like they grew plants even underground.")
    UpdateQuestZone(Quest,"Antonica")
	AddQuestStepChat(Quest, 2, "I need to return to Darmen.", 1, "I need to return to Darmen to let her know about the atrium.", 11, 120366)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I told Daremn of the atrium.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I told Darmen of the atrium in Stormhold.")

	UpdateQuestDescription(Quest, "After exploring Stormhold I was able to find an atrium on a lower level.  It did appear that plants were grown here.  Darmen believed that Karana provided the light and water to sustain these plants' lives.  <br> <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

