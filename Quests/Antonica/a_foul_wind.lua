--[[
    Script Name    : Quests/Antonica/a_foul_wind.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.12 03:05:46
    Script Purpose : Access to the Firemyst Gully Alternative instance

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStep(Quest, 1, "I need to seek out Firemyst Gully in the center of Antonica.", 1, 100, "I need to seek out Lord Nalin at Firemyst Gully in eastern Antonica.", 2183)
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
	UpdateQuestStepDescription(Quest, 1, "I found Lord Nalin, but it was too late.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found and entered Firemyst Gully.")

	UpdateQuestDescription(Quest, "Unfortunately it was too late when I arrived at Firemyst Gully. Lord Nalin and his encampment had succumbed to the touch of the Blightwind witches. The whole area will need to be cleansed now.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
