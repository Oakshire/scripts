--[[
    Script Name    : Quests/MultipleZones/lore_and_legend_gnoll.lua
    Script Author  : AussieGlen
    Script Date    : 2021.12.31 07:12:01
    Script Purpose : 

        Zone       : MultipleZones
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKillByRace(Quest, 1, "I need to find a gnoll spirit.", 1, 100, "I must locate several gnoll body parts.", 2516, 298)
	AddQuestStepKillByRace(Quest, 2, "I need to find a gnoll heart.", 1, 100, "I must locate several gnoll body parts.", 2516, 298)
	AddQuestStepKillByRace(Quest, 3, "I need to find a gnoll brain.", 1, 100, "I must locate several gnoll body parts.", 2516, 298)
	AddQuestStep(Quest, 4, "I need to find and study a gnoll paw.", 1, 100, "I must locate several gnoll body parts.", 11)
	AddQuestStep(Quest, 5, "I need to find and study a gnoll tooth.", 1, 100, "I must locate several gnoll body parts.", 11)
	AddQuestStep(Quest, 6, "I need to find and study a gnoll nail.", 1, 100, "I must locate several gnoll body parts.", 11)
	AddQuestStep(Quest, 7, "I need to find and study a gnoll eye.", 1, 100, "I must locate several gnoll body parts.", 11)
	AddQuestStep(Quest, 8, "I need to find and study a gnoll ear.", 1, 100, "I must locate several gnoll body parts.", 11)
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
    if QuestStepIsComplete(Player, 5398, 1) and QuestStepIsComplete(Player, 5398, 2) and QuestStepIsComplete(Player, 5398, 3) and QuestStepIsComplete(Player, 5398, 4) and QuestStepIsComplete(Player, 5398, 5) and QuestStepIsComplete(Player, 5398, 6) and QuestStepIsComplete(Player, 5398, 7) and QuestStepIsComplete(Player, 5398, 8) then
        QuestIsComplete(Quest, QuestGiver, Player)
    end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found a gnoll spirit.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found a gnoll heart.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found a gnoll brain.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have found and studied a gnoll paw.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have found and studied a gnoll tooth.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have found and studied a gnoll tail.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have found and studied a gnoll eye.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step8Complete(Quest, QuestGiver, Player)
   UpdateQuestStepDescription(Quest, 8, "I have found and studied a gnoll ear.")
   CheckProgress(Quest, QuestGiver, Player)
end

function QuestIsComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have located all of the necessary gnoll body parts.")
	UpdateQuestDescription(Quest, "I have learned the secrets of the gnoll.")
	GiveQuestReward(Quest, Player)
end

