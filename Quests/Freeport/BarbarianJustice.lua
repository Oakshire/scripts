--[[
	Script Name		:	Quests/Freeport/BarbarianJustice.lua
	Script Purpose	        :	Handles the quest, "Barbarian Justice"
	Script Author	        :	premierio015
	Script Date		:	27.08.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	Selyse Brazenroot
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill the greedy, corrupt guards", 8, 100, "I should liberate the stolen Halasian antiques within Scale Yard: Traitors' End and deal with the corrupt guards.", 11, 6490005)
        AddQuestStep(Quest, 2, "Gather Halasian antiques", 6, 100, "I should liberate the stolen Halasian antiques within Scale Yard: Traitors' End and deal with the corrupt guards.", 11)
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
	AddQuestStepChat(Quest, 3, "Return to Selyse Brazenroot", 1, "I should return to Selyse Brazenroot, at the Freeport Militia House in the city of Freeport.", 11, 5590142)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end


function Step2Complete(Quest, QuestGiver, Player)
        UpdateQuestStepDescription(Quest, 2, "")
         CheckProgress(Quest, QuestGiver, Player)
end


function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 577, 1) and QuestStepIsComplete(Player, 577, 2) then
        UpdateQuestTaskGroupDescription(Quest, 1, "")
        AddQuestStepChat(Quest, 3, "Return to Selyse Brazenroot", 1, "I should return to Selyse Brazenroot, at the Freeport Militia House in the city of Freeport.", 11, 5590142)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end
   end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Selyse Brazenroot, the barbarian mentor.")

	UpdateQuestDescription(Quest, "Selyse Brazenroot, the barbarian mentor in Freeport, was pleased that I was able to recover so many Halasian antiques and heirlooms that were left behind within Scale Yard.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Quest2Complete(Quest, QuestGiver, Player)
        elseif Step == 3 then
                QuestComplete(Quest, QuestGiver, Player)
	end
end
