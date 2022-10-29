--[[
    Script Name    : Quests/CastleviewHamlet/sword_for_aadalian.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.25 09:01:30
    Script Purpose : 

        Zone       : CastleviewHamlet
        Quest Giver: Aadalian Farenair
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Froptub.", 1, "I must see about Aadalian's sword at Froptub's smithy in Castleview.", 11, 2360018)
	AddQuestStepCompleteAction(Quest, 1, "Pickedup")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("My design is not mere decoration, friend. The inscription chronicles the cohabitation of our two races. Would you be kind and see what's keeping the sword at Froptub's smithy?")
	Dialog.AddVoiceover("voiceover/english/aadalian_farenair/qey_village04/aadalianfarenair001.mp3",1068773246, 2639950014)
 	PlayFlavor(QuestGiver, "", "", "shrug", 0,0 , Player)
   Dialog.AddOption("I suppose I can do that.")
   Dialog.Start()
  end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Pickedup(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've retrieved Aadalian's sword.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've retrieved Aadalian's sword from Froptub's smithy.")

	AddQuestStepChat(Quest, 2, "I need to return to Aadalian.", 1, "I need to deliver Aadalian's family sword to him.", 11, 2360019)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I've returned Aadalian's sword.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've returned Aadalian's sword, but he doesn't seem too impressed with the craftsmanship.")
	
	UpdateQuestDescription(Quest, "I suppose Aadalian was pleased with the work Froptub did. The mark was not to my own liking, but under the circumstances, I believe it was decent work.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Pickedup(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
