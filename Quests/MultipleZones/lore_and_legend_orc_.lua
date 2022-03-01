--[[
	Script Name		:	Quests/MultipleZones/lore_and_legend_orc_.lua
	Script Purpose	:	Handles the quest, "Lore and Legend: Orc"
	Script Author	:	premierio015
	Script Date		:	20.06.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Multiple Zones
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKillByRace(Quest, 1, "I need to find an orc spirit.", 1, 100, "I must locate several orc body parts.", 2516, 317)
		AddQuestStep(Quest, 2, "I need to find an orc heart.", 1, 100, "I must locate several orc body parts.", 135)
			AddQuestStep(Quest, 3, "I need to find an orc brain.", 1, 100, "I must locate several orc body parts.", 109)
				AddQuestStep(Quest, 4, "I need to find and study an orc eye.", 1, 100, "I must locate several orc body parts.", 11)
					AddQuestStep(Quest, 5, "I need to find and study an orc skin.", 1, 100, "I must locate several orc body parts.", 11)
						AddQuestStep(Quest, 6, "I need to find and study an orc tooth.", 1, 100, "I must locate several orc body parts.", 11)
							AddQuestStep(Quest, 7, "I need to find and study an orc spine.", 1, 100, "I must locate several orc body parts.", 11)
								AddQuestStep(Quest, 8, "I need to find and study an orc ear.", 1, 100, "I must locate several orc body parts.", 11)
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
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5257, 1) and QuestStepIsComplete(Player, 5257, 2) and QuestStepIsComplete(Player, 5257, 3) and QuestStepIsComplete(Player, 5257, 4) and QuestStepIsComplete(Player, 5257, 5) and QuestStepIsComplete(Player, 5257, 6) and QuestStepIsComplete(Player, 5257, 7) and QuestStepIsComplete(Player, 5257, 8) then
        QuestIsComplete(Quest, QuestGiver, Player)
end
    end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found an orc spirit.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found an orc heart.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found an orc brain.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have found and studied an orc eye.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have found and studied an orc skin.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have found and studied an orc tooth.")
	CheckProgress(Quest, QuestGiver, Player)

end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have found and studied an orc spine.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step8Complete(Quest, QuestGiver, Player)
   UpdateQuestStepDescription(Quest, 8, "I have found and studied an orc ear.")
   CheckProgress(Quest, QuestGiver, Player)
end

function QuestIsComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have located all of the necessary orc body parts.")
	UpdateQuestDescription(Quest, "I have learned the secrets of the orc.")
	GiveQuestReward(Quest, Player)
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

