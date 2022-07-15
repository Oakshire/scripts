--[[
	Script Name		:	99_bottles_of_beer_in_my_hand.lua
	Script Purpose	:	Handles the quest, "99 Bottles Of Beer In My Hand"
	Script Author	:	torsten
	Script Date		:	15.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Festus Septimius
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to find enough sand in the bulky brine sifters' glizzards.", 5, 100, "I need to kill enough bulky brine sifters in the Sunken City.", 11, 1240007, 1240045)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found enough sand in the bulky brine sifters' glizzards.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found enough sand in the bulky brine sifters' glizzards.")

    AddQuestStepChat(Quest, 2, "I should return to Festus Septimius.", 1, "I should return to Festus Septimius to deliver the sand.", 11, 1370024)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Festus Septimius was happy with the result.")
	GiveQuestReward(Quest, Player)
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

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end

