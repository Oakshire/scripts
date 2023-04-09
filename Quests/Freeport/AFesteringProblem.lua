--[[
	Script Name		:	a_festering_problem.lua
	Script Purpose	:	Handles the quest, "A Festering Problem"
	Script Author	:	QCynnar
	Script Date		:	4/8/2023
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	World Event
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]

require "SpawnScripts/Generic/DialogModule"

local AQeynosianScout = 330306
local AQeynosianProtector = 330306
local Kraofla = 330291
local OfficerGezlowe = 5590146


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Find and destroy the Qeynosians and the rescued froglok.", 1, 100, "Search out the Qeynosians and put the froglok down once more.", 11, AQeynosianScout, AQeynosianProtector)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hey, I don't care about that.  What matters is that it's still alive. Go take care of it.")
	Dialog.AddVoiceover("intelligence_officer_gezlowe/fprt_west/io_gezlowe009.mp3", 1341018136, 217983311)
	Dialog.AddOption("Fine.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Gezlowe's orders have been followed - the enemies of Freeport are dead.")
	UpdateQuestTaskGroupDescription(Quest, 1, "The Qeynosians and the froglok have been dealt with appropriately.")

	AddQuestStepChat(Quest, 2, "Inform Gezlowe of the demise of the camp.", 1, "With the froglok dead, I must return once more to Gazlowe.", 11, OfficerGezlowe)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have informed Gezlowe of the froglok's demise.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I.O. Gezlowe has been informed of the death of the Qeynosians and the frog.")

	UpdateQuestDescription(Quest, "I've managed to wipe out the scum of Qeynos and cleanse the stench of that foul frog from the lands outside the city gates.  However, it looks like there may be more to be done.  <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end