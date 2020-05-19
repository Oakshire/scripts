--[[
	Script Name: speckled_rattler_venom.lua
	Script Purpose: Handles the quest, "Speckled Rattler Venom"
	Script Author: vo1d
	Script Date: 10/8/2019
	Script Notes: n/a

	Zone: Commonlands
	Quest Giver:
	Preceded by: None
	Followed by: Beetle Shells
--]]

require "SpawnScripts/Generic/DialogModule"

local GerunPontian = 330014
local SpeckledRattler = 330020

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect venom from eight speckled rattlers", 8, 100, "Gerun wants the venom from eight speckled rattlers.", 325, SpeckledRattler)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance (Player, QuestGiver) < 30 then
			FaceTarget(QuestGiver, Player)
			Dialog.New(QuestGiver, Player)

			Dialog.AddDialog("Great! I'll be here, of course.")
			Dialog.AddVoiceover("", "", 0)
			Dialog.AddOption("I'll be back.")

			Dialog.Start()
		end
	end
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the venom.")

	AddQuestStepChat(Quest, 2, "I need to bring this venom back to Gerun", 1, "Gerun wants the venom from eight speckled rattlers.", 11, GerunPontian)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed,
	-- parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Gerun the venom.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I acquired the venom for Gerun.")

	UpdateQuestDescription(Quest, "I collected the venom for Gerun and received my payment.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
