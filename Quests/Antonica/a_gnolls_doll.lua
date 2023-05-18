--[[
    Script Name    : Quests/Antonica/a_gnolls_doll.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.17 07:05:36
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Slay the Darkpaw mystics", 14, 100, "I can't believe the gnolls are using dark magics.  Antonica would be a safer place with fewer Darkpaw Mystics.", 611, 120015)
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
	UpdateQuestStepDescription(Quest, 1, "I've slain enough Darkpaw Mystics.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain a Darkpaw mystic")

	UpdateQuestDescription(Quest, "You feel much better now that there are fewer Darkpaw Mystics in the world.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
