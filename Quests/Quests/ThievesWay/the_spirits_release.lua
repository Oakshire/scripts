--[[
	Script Name	:	the_spirits_release.lua
	Script Purpose	:	Handles the quest, "The Spirit's Release"
	Script Author	:	EmemJR
	Script Date	:	10/7/2019
	Script Notes	:	Auto generated with QuestParser.

	Zone		:	Thieves' Way
	Quest Giver	:	item A mystical Sphere(id# 2304
	Preceded by	:	None
	Followed by	:	None
--]]

local itemId = 2304
function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill some netherot chanters.", 5, 100, "I must kill five netherot chanters.", 611, 1540015)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
       
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed some netherot chanters.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed five netherot chanters")

	AddQuestStep(Quest, 2, "I should inspect the orb.", 1, 100, "I should inspect the orb.", 11)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have inspected the orb.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have inspected the orb.")

	UpdateQuestDescription(Quest, "I found a magic stone that contained the spirit of a former Darkblade rogue.  The spirit was freed when I killed the Netherot Chanters.  The power of the stone is now mine.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
