--[[
    Script Name    : Quests/GobblerocksHideout/the_sewer_it_key.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.16 03:07:48
    Script Purpose : Access Quest

        Zone       : GobblerocksHideout
        Quest Giver: an old key(Item)
        Preceded by: None
        Followed by: 
--]]

local AnOldKeyItem = 3773

function Init(Quest)
	AddQuestStep(Quest, 1, "I should search the Commonlands for a sewer grate that will accept this key.", 1, 100, "I need to find out what Freeport grate this key will open. It has the number five and a sewer pipe are engraved on its head.", 11)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "The lock has been found!")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found the lock to which this key belongs.")

	UpdateQuestDescription(Quest, "I have used this old key and entered what appears to be some sort of Goblin hideout.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
