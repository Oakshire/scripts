--[[
    Script Name    : Quests/NorthQeynos/papers_from_fhara.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.11 04:05:20
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: Fhara 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must speak with Trevor Minturn.", 1, "I must take these papers to Trevor in South Qeynos.", 75, 2310042)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
    UpdateQuestZone(Quest,"South Qeynos")
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
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Trevor.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have taken the papers to Trevor in South Qeynos.")

	UpdateQuestDescription(Quest, "I delivered some important business letters from Fhara to her partner Trevor.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

