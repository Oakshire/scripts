--[[
    Script Name    : Quests/Antonica/the_hunt_for_the_windstalker_rumbler.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.15 09:04:21
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Watch for the Windstalker Rumbler of Antonica.", 1, 100, "I should keep an eye out for the Windstalker Rumbler in Antoncia.  It could be anywhere... if it even exists!", 611, 120495)
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
	UpdateQuestStepDescription(Quest, 1, "Slew the Windstalker Rumbler.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I killed the Windstalker Rumbler in Antonica.")

	UpdateQuestDescription(Quest, "I killed the Windstalker Rumbler!  I wonder if anyone would be interested, perhaps a family waiting to avenge one of theirs taken from them by this tunneling beast of Antonica.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

