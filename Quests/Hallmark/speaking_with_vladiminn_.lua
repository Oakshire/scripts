--[[
    Script Name    : Quests/Hallmark/speaking_with_vladiminn_.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.10 12:09:24
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must speak with Vladiminn.", 1, "I need to speak with Vladiminn near the archery targets.", 11, 3250016)
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
	UpdateQuestStepDescription(Quest, 1, "I spoke with Vladiminn.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've spoken with Vladiminn.")

	UpdateQuestDescription(Quest, "I've spoken with Vladiminn about being a scout as Garven Tralk.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
