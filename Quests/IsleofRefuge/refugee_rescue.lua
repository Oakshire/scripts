--[[
    Script Name    : Quests/IsleofRefuge/refugee_rescue.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.11 12:09:10
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: Braksan Steelforge (3250017)
        Preceded by: Goblin Supply Raid
        Followed by: Striking Back at the Goblins
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to taunt and kill five Gruttooth aggressors.", 5, 100, "I need to find the refugees being held captive on the west most part of the island and use my taunt ability to distract, and then kill their goblin aggressors.", 91)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Be discreet when you enter the alcove.  You don't want to jeopardize the refugees' lives.  Taunt those green critters... make them chase you away from the prisoners.  If you divert the goblins and rescue the captives, I'll reward you with more gear.")
	Dialog.AddVoiceover("voiceover/english/braksan_steelforge/tutorial_island02/braksansteelforge007.mp3", 584535724,1918263116)
    PlayFlavor(QuestGiver, "", "", "nod", 0, 0, Player)
    Dialog.AddOption("I'll take care of the goblin problem.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I killed five Gruttooth aggressors.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I killed five Gruttooth aggressors.")

	AddQuestStepChat(Quest, 2, "I need to speak with Braksan.", 1, "I need to return to Braksan and tell him of my deeds.", 11, 3250017)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I spoke to Braksan.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I spoke to Braksan.")

	UpdateQuestDescription(Quest, "I dispatched five of those Gruttooth aggressors that were holding the refugees captive and told Braksan that the refugees should be able to return to the outpost now.  He rewarded me with a new pair of protective leggings.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
