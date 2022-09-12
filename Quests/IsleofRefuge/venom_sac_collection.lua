--[[
    Script Name    : Quests/IsleofRefuge/venom_sac_collection.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.11 12:09:28
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: Nathinia Sparklebright (3250014)
        Preceded by: War Statues
        Followed by: Striking Back at the Goblins
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect five giant spider venom sacs.", 5, 100, "I need to slay five giant spiders and collect their venom sacs for Nathinia. The spiders can be found in the island's central grove northwest of the outpost.", 170, 3250084,3250085)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)   
 	Dialog.AddDialog("Thank you.  I need enough venom sacs to create an antidote for the poisonous goblin spears.  Good luck.  Please be cautious.")
	Dialog.AddVoiceover("voiceover/english/nathinia_sparklebright/tutorial_island02/nathiniasparklebright007.mp3", 2105546738,492895253)
    PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Player)
    Dialog.AddOption("I will return shortly.")	
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I was able to collect five venom sacs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I was able to collect five venom sacs.")

	AddQuestStepChat(Quest, 2, "I need to take these venom sacs to Nathinia.", 1, "I need to return these venom sacs to Nathinia in the outpost.", 11, 3250014)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave the venom sacs to Nathinia.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave the venom sacs to Nathinia.")

	UpdateQuestDescription(Quest, "I was able to collect five giant spider venom sacs and give them to Nathinia.  She is going to get to work immediately on creating an antidote.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end