--[[
	Script Name	:	Quests/VerminsSnye/ZombiePincushion.lua
	Script Purpose	:	Handles the quest, "Zombie Pincushion"
	Script Author	:	premierio015
	Script Date	:	04.06.2020
	Script Notes	:	Auto generated with QuestParser.

	Zone		:	Vermin's Snye
	Quest Giver	:	Throwing Dagger Covered with Zombie Rot
	Preceded by	:	None
	Followed by	:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Kill zombies for more throwing daggers", 10, 100, "I'm looking for throwing daggers that may be stuck in other zombies down here that aren't covered and ruined by rot.", 362, 2000027, 2000018, 2000011)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
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

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "")
	UpdateQuestTaskGroupDescription(Quest, 1, "After much searching I finally found some serviceable throwing daggers.")

	UpdateQuestDescription(Quest, "I finally found some usable throwing daggers. They're covered with zombie rot, but are at least serviceable.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


