--[[
    Script Name    : Quests/IsleofRefuge/xalieas_request.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.25 03:09:16
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: Priestess Xaliea
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

local priestess_xaliea = 3250009
local a_fallen_pirate = 3250145
local Graybeard = 3250143

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to find three bonechips for Xaliea. Perhaps I can obtain some from the undead pirates on the northeastern shore of the bay.", 3, 25, "I need to acquire three bone chips for Xaliea.", 322, a_fallen_pirate, Graybeard)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("I can hear them, out there in the distance. Their bones are rattling and crackling. Oh! How I want to feel them crumble beneath my grasp. Hurry up, bring me those bone chips!")
	Dialog.AddVoiceover("voiceover/english/priestess_xaliea/tutorial_island01/xaliea/xaliea_ally_secondtalk_01.mp3", 125454777, 4152864248)
    PlayFlavor(QuestGiver,"","","scheme",0,0,Player)
    Dialog.AddOption("I will do so.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the three bonechips for Xaliea.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have the bone chips for Xaliea.")

	AddQuestStepChat(Quest, 2, "I still need to take the bone chips to Xaliea.", 1, "I should take the bone chips back to Xaliea.", 418, priestess_xaliea)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given the bone chips to Xaliea.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have taken the bonechips back to Xaliea.")

	UpdateQuestDescription(Quest, "I defeated some of the local skeletons and gave Priestess Xaliea the three bone chips. This seemed to satisfy her lust for adventure.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
