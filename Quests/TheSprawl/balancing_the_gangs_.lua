--[[
	Script Name		:	balancing_the_gangs.lua
	Script Purpose	:	Handles the quest, "Balancing the Gangs"
	Script Author	:	premierio015
	Script Date		:	25.06.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The Sprawl
	Quest Giver		:	a misspelled Guttersnipe note
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Kill Giantslayer thugs", 8, 100, "I should go rough up a few Giantslayer thugs in the Sprawl for being bullies.  I can reach the Sprawl by using any of the bells in and around the City of Freeport.", 611, 1260013)
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
	UpdateQuestStepDescription(Quest, 1, "I have killed some Giantslayer thugs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I beat up 8 Giantslayer thugs in the Sprawl.")
	UpdateQuestDescription(Quest, "I finished roughing up the Giantslayers.  That should shift the power balance a little more to even around here. <br>")
	GiveQuestReward(Quest, Player)
	if HasItem(Player, 2262) then
	RemoveItem(Player, 2262)
end
   end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
