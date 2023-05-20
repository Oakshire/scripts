--[[
    Script Name    : Quests/Antonica/bug_squashing.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.19 03:05:46
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill the klicnik warriors near the gates of North Qeynos.", 25, 100, "There are way too many klicnik warriors around here!  I should destroy a bunch of them before they get any closer to Qeynos!", 162, 120253,120367)
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
	UpdateQuestStepDescription(Quest, 1, "I have squashed a large amount of the klicnik warriors in Antonica.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have squashed the klicnik warriors.")

	UpdateQuestDescription(Quest, "I have destroyed quite a few klicnik warriors, I hope this helps keep them away from Qeynos.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
