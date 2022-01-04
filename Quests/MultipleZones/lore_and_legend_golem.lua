--[[
    Script Name    : Quests/MultipleZones/lore_and_legend_golem.lua
    Script Author  : AussieGlen
    Script Date    : 2021.12.31 11:12:09
    Script Purpose : 

        Zone       : MultipleZones
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKillByRace(Quest, 1, "I need to find a golem ambulatory fragment.", 1, 100, "I must locate several golem body parts.", 2516, 135)
	AddQuestStepKillByRace(Quest, 2, "I need to find a golem core shard.", 1, 100, "I must locate several golem body parts.", 2516, 135)
	AddQuestStepKillByRace(Quest, 3, "I need to find a golem essence trap.", 1, 100, "I must locate several golem body parts.", 2516, 135)
	AddQuestStep(Quest, 4, "I need to find and study a golem motive prism.", 1, 100, "I must locate several golem body parts.", 11)
	AddQuestStep(Quest, 5, "I need to find and study a golem corporeal shell.", 1, 100, "I must locate several golem body parts.", 11)
	AddQuestStep(Quest, 6, "I need to find and study a golem sentience leash.", 1, 100, "I must locate several golem body parts.", 11)
	AddQuestStep(Quest, 7, "I need to find and study a golem animating force.", 1, 100, "I must locate several golem body parts.", 11)
	AddQuestStep(Quest, 8, "I need to find and study a golem obedience chain.", 1, 100, "I must locate several golem body parts.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
 	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
 	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
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
	elseif Step == 5 then
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		Step8Complete(Quest, QuestGiver, Player)
	end
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5405, 1) and QuestStepIsComplete(Player, 5405, 2) and QuestStepIsComplete(Player, 5405, 3) and QuestStepIsComplete(Player, 5405, 4) and QuestStepIsComplete(Player, 5405, 5) and QuestStepIsComplete(Player, 5405, 6) and QuestStepIsComplete(Player, 5405, 7) and QuestStepIsComplete(Player, 5405, 8) then
        QuestIsComplete(Quest, QuestGiver, Player)
    end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found a golem ambulatory fragment.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found a golem core shard.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found a golem essence trap.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have found and studied a golem motive prism.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have found and studied a golem corporeal shell.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have found and studied a golem sentience leash.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have found and studied a golem animating force.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step8Complete(Quest, QuestGiver, Player)
   UpdateQuestStepDescription(Quest, 8, "I have found and studied a golem obedience chain.")
   CheckProgress(Quest, QuestGiver, Player)
end

function QuestIsComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have located all of the necessary golem body parts.")
	UpdateQuestDescription(Quest, "I have learned the secrets of the golem.")
	GiveQuestReward(Quest, Player)
end

