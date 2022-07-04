--[[
    Script Name    : Quests/StarcrestCommune/FarnsbysNewAxe.lua
    Script Author  : Dorbin
    Script Date    : 07.03.2022
    Script Purpose : 

        Zone       : StarcrestCommune
        Quest Giver: Farnsby Dunworth
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to pick up an axe from Armsdealer Barrik in Starcrest Commune.", 1, "I am to deliver payment and pick up an axe from Arms Dealer Barrik on the south side of Starcrest.", 401, 2340010)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Perfect!  Here.  Take this bag of coins over to Armsdealer Barrik and tell him Farnsby sent you.  He's got the axe set aside for me.  When you've got it, be sure to bring it back to me!")
    PlayFlavor(QuestGiver, "", "", "nod", 0, 0, Player)
	Dialog.AddVoiceover("voiceover/english/farnsby_dunworth/qey_village02/farnsbydunworth002.mp3", 810120577, 2174592567)
	Dialog.AddOption("Sounds easy enough.  I'll be back shortly.")
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
	UpdateQuestStepDescription(Quest, 1, "I've picked up Farnsby's axe from Armsdealer Barrik.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've retrieved the axe from Arms Dealer Barrik for Farnsby Dunworth.")
    UpdateQuestZone(Quest,"Starcrest")
	AddQuestStepChat(Quest, 2, "I should return to Farnsby Dunworth in Starcrest.", 1, "Farnsby is expecting this axe.  I last saw him at the tavern in Starcrest.", 642,2340022)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end




function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've delivered  Farnsby's axe.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've delivered  Farnsby's axe.")

	UpdateQuestDescription(Quest, "Farnsby Dunworth was quite pleased that I returned with his axe from the smith so quickly.  I'm still a bit curious about that scroll the two erudites were pursuing though.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
