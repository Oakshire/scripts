--[[
	Script Name		:	Quests/Freeport/TeirDalTurncoats.lua
	Script Purpose	        :	Handles the quest, "Teir'Dal Turncoats"
	Script Author          	:	premierio015
	Script Date		:	07.06.2020
	Script Notes	        :	Dark Elf Racial Questline

	Zone			:	The City of Freeport
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill Thexians", 8, 100, "The Arasai and other Teir'Dal are busy hunting down and torturing the remaining Thexians in Longshadow Alley.", 611, 6480003, 6480012, 6480013)
        AddQuestStep(Quest, 2, "Gather Arasai torture instruments", 6, 100, "The Arasai and other Teir'Dal are busy hunting down and torturing the remaining Thexians in Longshadow Alley.", 11, 6480037)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
        AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
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
	UpdateQuestStepDescription(Quest, 1, "")
        CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "")
        CheckProgress(Quest, QuestGiver, Player)
end


function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 566, 1) and QuestStepIsComplete(Player, 566, 2) then
        UpdateQuestTaskGroupDescription(Quest, 1, "I helped reduce the number of remaining Thexians in Longshadow Alley and obtained some Arasai torture instruments for Dyymona K'Vexx.")
 	AddQuestStepChat(Quest, 3, "Return to Dyymona K'Vexx", 1, "I should return to Dyymona K'Vexx, at the Academy of Arcane Science in the city of Freeport.", 11, 5590238)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end
   end



function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Dyymona K'Vexx, the dark elf mentor.")

	UpdateQuestDescription(Quest, "Dyymona K'Vexx was pleased with my accomplishments within Longshadow Alley, but she warned me against letting the fun I had experienced overshadow the lesson to be learned. We Teir'Dal are deceitful, opportunistic and power hungry by nature, but we must temper these useful and admirable traits with patience and measure the consequences.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

