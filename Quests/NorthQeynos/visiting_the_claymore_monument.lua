--[[
    Script Name    : Quests/NorthQeynos/visiting_the_claymore_monument.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.11 09:05:27
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: Andrea Dovesong
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to find the location of the second monument.", 6, "I would like to find the location of the second Qeynos Claymore Monument.", 11, -442.51, 2.14, 553.02)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
    UpdateQuestZone(Quest, "Antonica")
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
	UpdateQuestStepDescription(Quest, 1, "I found the location of the second monument.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the location of the second monument.")

	UpdateQuestDescription(Quest, "I found the second Qeynos Claymore Monument not too far from the city of Qeynos itself.  There were gnolls along the way, but not more than I could handle.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
