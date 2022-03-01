--[[
    Script Name    : Quests/MultipleZones/lore_and_legend_vampire.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.01 05:01:31
    Script Purpose : 

        Zone       : MultipleZones
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKillByRace(Quest, 1, "I need to find a vampire black heart.", 1, 100, "I must locate several vampire body parts.", 2516, 342)
	AddQuestStepKillByRace(Quest, 2, "I need to find a vampire hypnotic eyes.", 1, 100, "I must locate several vampire body parts.", 2516, 342)
	AddQuestStepKillByRace(Quest, 3, "I need to find a vampire coffin dust.", 1, 100, "I must locate several vampire body parts.", 2516, 342)
	AddQuestStep(Quest, 4, "I need to find and study 20 vampiric incisors.", 1, 100, "I must locate several vampire body parts.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
 	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
 	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)

end

function quest_complete(Quest, QuestGiver, Player)

end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	end
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5413, 1) and QuestStepIsComplete(Player, 5413, 2) and QuestStepIsComplete(Player, 5413, 3) and QuestStepIsComplete(Player, 5413, 4) then
        QuestIsComplete(Quest, QuestGiver, Player)
    end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found a vampire black heart.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found a vampire hypnotic eyes.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found a vampire coffin dust.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have found and studied 20 vampiric incisors.")
	CheckProgress(Quest, QuestGiver, Player)

end

function QuestIsComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have located all of the necessary vampire body parts.")
	UpdateQuestDescription(Quest, "I have learned the secrets of the vamnpire.")
	GiveQuestReward(Quest, Player)
end

