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
	AddQuestStepLocation(Quest, 1, "I need to check the gate in Big Bend", 20, "I'm supposed to check all of the gates that lead into the city.", 11, 134)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I've checked the gate in Big Bend")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've checked the gate in Big Bend")

    AddQuestStepLocation(Quest, 2, "I need to check the gate in Longshadow Alley", 20, "I'm supposed to check all of the gates that lead into the city.", 11, 138)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I've checked the gate in Longshadow Alley")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've checked the gate in Longshadow Alley")

    AddQuestStepLocation(Quest, 3, "I need to check the gate in North Freeport", 20, "I'm supposed to check all of the gates that lead into the city.", 11, 144)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 3, "I've checked the gate in North Freeport")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've checked the gate North Freeport")

    AddQuestStepLocation(Quest, 4, "I need to check the gate in Scale Yard", 20, "I'm supposed to check all of the gates that lead into the city.", 11, 139)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 4, "I've checked the gate in Scale Yard")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've checked the gate Scale Yard")

    AddQuestStepLocation(Quest, 5, "I need to check the gate in South Freeport", 20, "I'm supposed to check all of the gates that lead into the city.", 11, 166)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 5, "I've checked the gate in South Freeport")
	UpdateQuestTaskGroupDescription(Quest, 5, "I've checked the gate in South Freeport")

    AddQuestStepLocation(Quest, 6, "I need to check the gate in Stonestair Byway", 20, "I'm supposed to check all of the gates that lead into the city.", 11, 135)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 6, "I've checked the gate in Stonestair Byway")
	UpdateQuestTaskGroupDescription(Quest, 6, "I've checked the gate in Stonestair Byway")

    AddQuestStepLocation(Quest, 7, "I need to check the gate in Temple Street", 20, "I'm supposed to check all of the gates that lead into the city.", 11, 136)
	AddQuestStepCompleteAction(Quest, 7, "QuestComplete")
end

function Step7Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 7, "I've checked the gate in Temple Street")
	UpdateQuestTaskGroupDescription(Quest, 7, "I've checked the gate in Temple Street")

    AddQuestStepLocation(Quest, 8, "I need to check the gate in West Freeport", 20, "I'm supposed to check all of the gates that lead into the city.", 11, 168)
	AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "I've checked the gate in West Freeport")
	UpdateQuestTaskGroupDescription(Quest, 8, "I've checked all of the gates leading into the city.")

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
	    Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
	    Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end


