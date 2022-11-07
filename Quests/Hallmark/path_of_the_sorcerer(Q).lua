--[[
    Script Name    : Quests/Hallmark/path_of_the_sorcerer(Q).lua
    Script Author  : Dorbin
    Script Date    : 2022.11.06 07:11:55
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
function Init(Quest)
	AddQuestStep(Quest, 1, "I need to pass Magister Niksel's trial.", 1, 100, "I must pass Magister Niksel's trial in the testing room south of the mage tower in South Qeynos.", 11)
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
	UpdateQuestStepDescription(Quest, 1, "I've passed Magister Niksel's trial.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've passed Magister Niksel's trial.")

	UpdateQuestDescription(Quest, "I passed the trial and will continue on my path as a sorcerer.  I know that I cannot be reckless with my power, or these forces may overwhelm me.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
