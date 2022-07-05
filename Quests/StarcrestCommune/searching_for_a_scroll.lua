--[[
    Script Name    : Quests/StarcrestCommune/searching_for_a_scroll.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.03 08:07:08
    Script Purpose : 

        Zone       : StarcrestCommune
        Quest Giver: Zentomaron Croosinaden
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to pick up a scroll from Scribe Varion Smitelin in Nettleville.", 1, "I'm to retrieve a scroll from the scribe Varion Smitelin in Nettleville.", 11,2330056)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Nettleville")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Ah!  That would solve our troubles indeed!  His name is Sage Varion Smitelin.  Travel to Nettleville, find his shop, and tell him Zentomaron Croosinaden demands he relinquish the ancient scroll of erudite lore!  I will reward you upon your return.")
    PlayFlavor(QuestGiver, "", "", "nod", 0, 0, Player)
	Dialog.AddVoiceover("voiceover/english/zentomaron_croosinaden/qey_village02/zentomaroncroosinaden001.mp3", 613750984, 1133411541)
	Dialog.AddOption("Varion will know your demands.  I'll return once I let him know!")
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
	UpdateQuestStepDescription(Quest, 1, "I've been to Scribe Varion Smitelin.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've been to Varion, and he refuses to give up the scroll.")
    UpdateQuestZone(Quest,"Starcrest Commune")
	AddQuestStepChat(Quest, 2, "I should return to Zentomaron Croosinaden in Starcrest.", 1, "Zentomaron will not be pleased to hear the news on the scroll.  I last saw him in Starcrest Commune.", 11,2340020)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've given Zentomaron the news on the scroll.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've given Zentomaron the news on the scroll")

	UpdateQuestDescription(Quest, "Scribe Varion would not divulge the scroll's location to Zentomaron.  I fear whatever debate he's having will go on forever.  I passed on the scribe's message to leave his nephew alone, but I don't know how seriously Zentomaron will take that request.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

