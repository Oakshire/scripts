--[[
    Script Name    : Quests/MultipleZones/lore_and_legendbrownie.lua
    Script Author  : AussieGlen
    Script Date    : 2021.12.29 07:12:07
    Script Purpose : 

        Zone       : MultipleZones
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKillByRace(Quest, 1, "I need to find a brownie eye.", 1, 100, "I must locate several brownie body parts.", 2516, 114)
	AddQuestStepKillByRace(Quest, 2, "I need to find a brownie skull.", 1, 100, "I must locate several brownie body parts.", 2516, 114)
	AddQuestStepKillByRace(Quest, 3, "I need to find a brownie spirit.", 1, 100, "I must locate several brownie body parts.", 2516, 114)
	AddQuestStep(Quest, 4, "I need to find and study a brownie tooth.", 1, 100, "I must locate several brownie body parts.", 11)
	AddQuestStep(Quest, 5, "I need to find and study a brownie heart.", 1, 100, "I must locate several brownie body parts.", 11)
	AddQuestStep(Quest, 6, "I need to find and study a brownie pancreas.", 1, 100, "I must locate several brownie body parts.", 11)
	AddQuestStep(Quest, 7, "I need to find and study a brownie finger.", 1, 100, "I must locate several brownie body parts.", 11)
	AddQuestStep(Quest, 8, "I need to find and study a brownie ear.", 1, 100, "I must locate several brownie body parts.", 11)
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
    if QuestStepIsComplete(Player, 5395, 1) and QuestStepIsComplete(Player, 5395, 2) and QuestStepIsComplete(Player, 5395, 3) and QuestStepIsComplete(Player, 5395, 4) and QuestStepIsComplete(Player, 5395, 5) and QuestStepIsComplete(Player, 5395, 6) and QuestStepIsComplete(Player, 5395, 7) and QuestStepIsComplete(Player, 5395, 8) then
        QuestIsComplete(Quest, QuestGiver, Player)
    end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found a brownie eye.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found a brownie skull.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found a brownie spirit.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have found and studied a brownie tooth.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have found and studied a brownie heart.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have found and studied a brownie pancreas.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have found and studied a brownie finger.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step8Complete(Quest, QuestGiver, Player)
   UpdateQuestStepDescription(Quest, 8, "I have found and studied a brownie ear.")
   CheckProgress(Quest, QuestGiver, Player)
end

function QuestIsComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have located all of the necessary brownie body parts.")
	UpdateQuestDescription(Quest, "I have learned the secrets of the brownie.")
	GiveQuestReward(Quest, Player)
end


