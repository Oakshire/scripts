--[[
	Script Name	:	the_secret_ship.lua
	Script Purpose	:	Handles the quest, "The Secret Ship"
	Script Author	:	vo1d
	Script Date	:	11/2/2019
	Script Notes	:	Using "a sea shell" until Nautilus Shells can be created in the ItemDB
	Zone		:	Outpost of the Overlord
	Quest Giver	:	
	Preceded by	:	None
	Followed by	:	None
--]]

require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepHarvest(Quest, 1, "Find nautilus shells in Sandstalker Bay for Bobble.", 5, 100, "I need to search Sandstalker Bay for nautilus shells for Bobble's research.", 2065, 2608)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)

	Dialog.AddDialog("Good!  I'll be up here observing.  Hurry now, the Overlord awaits!")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/bobble_whirlwidget/tutorial_island02_evil_revamp/quests/bobble_whirlwidget/bobble_whirlwidget005.mp3", 2911148610, 1213914347)
	Dialog.AddOption("I'm off!")

	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found all the nautilus shells that Bobble needs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I collected all the nautili that Bobble needed for his research.")

	AddQuestStepChat(Quest, 2, "Return to Bobble at Ebb Tide's Alehouse.", 1, "I need to return to Bobble with the nautili.", 11, 2780020)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I returned to Bobble.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Bobble and was rewarded for my time in the bay.")
	UpdateQuestDescription(Quest, "I was able to collect all of the nautili that Bobble needed for his research into creating an underwater ship.  Those Qeynosians will have a run for their money now!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
