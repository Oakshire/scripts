--[[
	Script Name		:	a_shady_clearing.lua
	Script Purpose	:	Handles the quest, "A Shady Clearing"
	Script Author	:	torsten
	Script Date		:	19.07.2022
	Script Notes	:	

	Zone			:	Longshadow Alley
	Quest Giver		:	Imnat D`Vren
	Preceded by		:	A Dramatic Performance
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill 10 diseased Ratonga.", 10, 100, "Kill 10 diseased Ratonga; they are in the Thieves' Way, near the entrances.", 611, 1540002, 1540021, 1540022, 1540024, 1540028, 1540072, 1540073)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I killed the Ratonga.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I killed the Ratonga in the Thieves' Way.")
    
    AddQuestStepChat(Quest, 2, "I should return to Imnat D`Vren.", 1, "I should return to Imnat D`Vren in Longshadow Alley.", 11, 1380031)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I killed the diseased Ratonga and returned to Imnat for a nice reward.")
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


