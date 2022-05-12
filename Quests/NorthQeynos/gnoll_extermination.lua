--[[
    Script Name    : Quests/NorthQeynos/gnoll_extermination.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.11 06:05:33
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: Sir Laughlin
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to gather ten gnoll ears.", 10, 80, "Laughlin's task requires that I return him the ears of ten full grown gnolls from Antonica.", 94, 120013,121193,120013,120092,120123,121269,120419,121195,120355,120015,121436,120363,120362,121223,120065,120184, 120376,120196,121335,120290,120858,120291, 120212, 120203, 121342, 121351)
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
	UpdateQuestStepDescription(Quest, 1, "I have retrieved the ears I needed.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've acquired the ten gnoll ears Sir Laughlin asked me to.")

	AddQuestStepChat(Quest, 2, "Return to Sir Laughlin.", 1, "I need to return to Sir Laughlin in North Qeynos.", 94, 2220024)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I spoke with Sir Laughlin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Sir Laughlin was suitably impressed with my prowess in defeating the gnolls.")

	UpdateQuestDescription(Quest, "Sir Laughlin commended me on my battle prowess!  I've taken my first steps into the greater world beyond the city.  Today Qeynos, tomorrow the world!")
	GiveQuestReward(Quest, Player)
end
