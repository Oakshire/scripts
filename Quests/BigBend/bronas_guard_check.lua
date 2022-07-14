--[[
	Script Name		:	bronas_guard_check.lua
	Script Purpose	:	Handles the quest, "Brona's Guard Check"
	Script Author	:	torsten
	Script Date		:	11.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Slaver Brona
	Preceded by		:	Brona's Thralls
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to check the gate in Big Bend", 20, "I'm supposed to check all of the gates that lead into the city.", 11, -2, 3, -67, 134)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I've checked the gate in Big Bend")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've checked the gate in Big Bend")

    AddQuestStepLocation(Quest, 2, "I need to check the gate in Longshadow Alley", 20, "I'm supposed to check all of the gates that lead into the city.", 11, 13, 3, 67, 138)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I've checked the gate in Longshadow Alley")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've checked the gate in Longshadow Alley")

    AddQuestStepLocation(Quest, 3, "I need to check the gate in Scale Yard", 20, "I'm supposed to check all of the gates that lead into the city.", 11, -4, -5, -6, 139)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 3, "I've checked the gate in Scale Yard")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've checked the gate Scale Yard")

    AddQuestStepLocation(Quest, 4, "I need to check the gate in Stonestair Byway", 20, "I'm supposed to check all of the gates that lead into the city.", 11, 6, -4, -94, 166)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 4, "I've checked the gate in Stonestair Byway")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've checked the gate in Stonestair Byway")

    AddQuestStepLocation(Quest, 5, "I need to check the gate in Temple Street", 20, "I'm supposed to check all of the gates that lead into the city.", 11, 18, 2, 24, 136)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've checked the gate in Temple Street")
	UpdateQuestTaskGroupDescription(Quest, 5, "I've checked all of the gates leading into the city.")
	
	AddQuestStepChat(Quest, 6, "I should return to Slaver Brona.", 1, "I should return to Slaver Brona.", 11, 1340030)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "It was easy enough work, but that Brona is up to something and I've unwittingly helped her. I wonder what she is trying to accomplish.")
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
	    Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
	    Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
	    Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
	    Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end


