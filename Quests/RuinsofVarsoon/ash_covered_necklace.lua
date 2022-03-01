--[[
	Script Name		:	ash_covered_necklace.lua
	Script Purpose	:	Handles the quest, "Ash Covered Necklace"
	Script Author	:	Dorbin
	Script Date		:	2/28/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Ruins of Varsoon
	Quest Giver		:	ash covered necklace
	Preceded by		:	Last Place They'd Look
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Take the necklace to Mossclean in The Willow Wood", 1, "I need to take the necklace to Qeynos, and see if I can't find this Mossclean person.", 985, 2370019)
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
	UpdateQuestStepDescription(Quest, 1, "I've taken the necklace to Zanhass Mossclean.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've taken the necklace to mender Zanhass Mossclean and had it restored to its original state.")

	UpdateQuestDescription(Quest, "The travel was well worth the effort.  The ash covered necklace was actually a black pearl necklace. Like I said, it was well worth the trouble.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end