--[[
	Script Name		:	combustible_gnome.lua
	Script Purpose	:	Handles the quest, "Combustible Gnome"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	8/30/2019
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Wailing Caves
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]
local Cog Burn = 2580001
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Slay skeletal orcs.", 30, 100, "Cog Burn wants me to slay about thirty of the undead orcs down here in the Wailing Caves.  I guess he wants their bones for some kind of experiment.", 611, 2580043)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain many undead orcs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've slain the undead orcs and have their remains.  All that's left to do is return the remains to Cog Burn.")

	AddQuestStepChat(Quest, 2, "Give Cog Burn the orc parts.", 1, "What a daunting task!  I've slain many of the undead orcs, now I must return to Cog Burn and give him the bones.", 11, 2580043)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Cog Burn the orc parts.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've given Cog Burn all of the undead orc remains.  Now to see what he gave me for my efforts.")

	UpdateQuestDescription(Quest, "It sure was a lot of work, but well worth the reward.  I wonder what it was that he was going to give me at first.  Hmm, I may never know.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
