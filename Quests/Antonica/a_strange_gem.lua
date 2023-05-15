--[[
    Script Name    : Quests/Antonica/a_strange_gem.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.15 03:05:14
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStep(Quest, 1, "I need to find what this gem belongs in.", 1, 100, "I should find a use for this gem.", 1175)
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
	UpdateQuestStepDescription(Quest, 1, "I found a statue and placed the gem in its eye socket.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found a statue and placed the gem in its eye socket.")

	UpdateQuestDescription(Quest, "I found a statue and placed the gem in its eye revealing a small crawl space under the statue.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
