--[[
    Script Name    : Quests/Antonica/the_legend_of_motte.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.15 09:04:10
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Slay some highwaymen.", 8, 100, "I must slay some highwaymen in Antonica.", 611, 120161, 120162, 120171)
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
	UpdateQuestStepDescription(Quest, 1, "Slew some highwaymen.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I slew some highwaymen in Antonica.")

	AddQuestStep(Quest, 2, "Inspect the bookcase.", 1, 100, "I must return to the bookcase in Windstalker Village that holds the book called &quot;The Legend of Motte.&quot;", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Inspected the bookcase.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to the bookcase in Windstalker Village that holds the book called &quot;The Legend of Motte.&quot;")

	AddQuestStep(Quest, 3, "Inspect Motte's tombstone.", 1, 100, "I must find the lost tombstone of Motte in Antonica.", 1009)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "Inspected Motte's tombstone.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I found the lost tombstone of Motte in Antonica.")

	UpdateQuestDescription(Quest, "I helped Sir Edwin Motte's spirit part from this world and its unrest. I earned a key that opened a secret compartment in Motte's tombstone filled with treasure.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

