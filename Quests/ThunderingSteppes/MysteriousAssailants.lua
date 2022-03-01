--[[
    Script Name    : Quests/ThunderingSteppes/MysteriousAssailants.lua
    Script Author  : Jabantiz
    Script Date    : 2014.09.26 06:09:17
    Script Purpose : 

        Zone       : ThunderingSteppes
        Quest Giver: Reinkor McCollin (2490027)
        Preceded by: None
        Followed by: Travelers Beware
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Find and slay ten drowned footsoldiers.", 10, 100, "Reinkor believes that drowned footsoldiers may be responsible for the deaths of his couriers and theft of his merchandise. Find and slay ten drowned footsoldiers.", 611, 2490137)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found and slain ten of the drowned footsoldiers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I was able to track down a group of drowned footsoldiers and destroy wretched souls.")

	AddQuestStepChat(Quest, 2, "Return to Reinkor McCollin.", 1, "I was successful in finding a group of drowned footsoldiers and eliminating them. I should return to Reinkor and inform him of the incident.", 11, 2490027)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	end
end