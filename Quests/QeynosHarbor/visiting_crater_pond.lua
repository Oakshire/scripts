--[[
    Script Name    : Quests/QeynosHarbor/visiting_crater_pond.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.24 06:05:14
    Script Purpose : 

        Zone       : QeynosHarbor
        Quest Giver: Ashilda MacHinry (2210126)
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to find Crater Pond.", 50, "I should see if I can find the Crater Pond in the Antonica plains.", 11, 128.12, -24.96, 481.58)
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
	UpdateQuestStepDescription(Quest, 1, "I found Crater Pond.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Crater Pond outside of the Qeynos gates.")

	UpdateQuestDescription(Quest, "I found the Crater Pond near the gates to Qeynos.  I haven't tested the water myself, but it does look as though it is poisoned.  Nothing was growing or living inside the pool, just as Ashilda MacHinry described.  I found a small flask nearby, perhaps someone once wanted a sample.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

