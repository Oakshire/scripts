--[[
	Script Name		:	last_place_theyd_look.lua
	Script Purpose	:	Handles the quest, "Last Place They'd Look"
	Script Author	:	Dorbin
	Script Date		:	2/28/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Ruins of Varsoon
	Quest Giver		:	a stack of books
	Preceded by		:	None
	Followed by		:	Ash Covered Necklace
	Note: NEEDS Book stack added to locations in RoV, tied together, and set at a random 2-4 hour respawn. 3 book locations ( -273, 0, -28 )  ( -301, 0, -34 )  ( -314, 0, -5 ) 
--]]


function Init(Quest)
	AddQuestStepSpell(Quest, 1, "Find the author of the journal; dead or alive.", 1, 100, "While here in the Ruins of Varsoon keep an eye out for the author of this journal, dead or alive.", 0, 0)
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
	UpdateQuestStepDescription(Quest, 1, "I found the remains of the author of the journal.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found the corpse of someone whom quite possible was the author of the journal.")

	UpdateQuestDescription(Quest, "I may have found the author of the journal. There was an old necklace within the remains of the corpse.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
