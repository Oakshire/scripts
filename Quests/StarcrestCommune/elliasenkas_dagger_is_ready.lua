--[[
    Script Name    : Quests/StarcrestCommune/elliasenkas_dagger_is_ready.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.03 01:07:18
    Script Purpose : 

        Zone       : StarcrestCommune
        Quest Giver: Barrik
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to give Barrik's note to Elliasenka in this village's tavern.", 1, "I need to give Arms Dealer Barrik's note to Elliasenka Croosinaden. She should be in the tavern in Starcrest Commune.", 75,2340021)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Can't we all?  Take this note to Elliasenka Croosinaden.  She may be in the tavern at the end of town.  It's an odd request.  Not too often an erudite orders a custom dagger!")
    PlayFlavor(QuestGiver, "", "", "nod", 0, 0, Player)
	Dialog.AddVoiceover("voiceover/english/armsdealer_barrik/qey_village02/armsdealerbarrik002.mp3", 138965399, 2089148039)
	Dialog.AddOption("I'll make sure she gets your note about her dagger.")
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
	UpdateQuestStepDescription(Quest, 1, "	I gave Barrik's note to Elliasenka.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I gave the note to Elliasenka from Arms Dealer Barrik, letting her know her dagger is ready.")
    UpdateQuestZone(Quest,"Starcrest")
	AddQuestStepChat(Quest, 2, "I should return to Barrik in Starcrest.", 1, "Barrik should be informed that Elliasenka recieved notification of her order.", 11,2340010)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I returned to Barrik.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Barrik.")

	UpdateQuestDescription(Quest, "I gave Arms Dealer Barrik's note to Elliasenka and returned to him for my payment. I hope Elliasenka is only going to use it to cut fruit.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

