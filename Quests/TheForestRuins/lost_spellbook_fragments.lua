--[[
	Script Name		:	lost_spellbook_fragments.lua
	Script Purpose	:	Handles the quest, "Lost Spellbook Fragments"
	Script Author	:	Dorbin)
	Script Date		:	2/22/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Forest Ruins
	Quest Giver		:	a spellbook fragment
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to take the fragment to the mages at the Concordium", 1, "I need to take this spellbook fragment to the Concordium.", 185, 2310071)
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
	UpdateQuestStepDescription(Quest, 1, "I took the fragment to the mages at the the Concordium.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've returned the spellbook framgment to the Concordium.")

	UpdateQuestDescription(Quest, "I returned the fragment of the spellbook for a reward to Amren Talbot at the Three Towers.  It wasn't much, but at least it was something.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
