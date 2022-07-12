--[[
	Script Name		:	rat_barsh.lua
	Script Purpose	:	Handles the quest, "Rat Barsh!"
	Script Author	:	torsten
	Script Date		:	12.07.2022
	Script Notes	:

	Zone			:	Big Bend
	Quest Giver		:	Kroota Gukbutcher
	Preceded by		:	Ay, There's the Rubb'ish
	Followed by		:	Much Ado' About Rallos
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill rats at the gate leading to the Sprawl.", 6, 100, "I need to go hunt for rats at the gate leading to the Sprawl.", 122, 1340045)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have barshed many rats.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I should have enough rat carcasses for the ceremony.")

    AddQuestStepChat(Quest, 2, "I should return to Kroota.", 1, "I have barshed many rats. I should return to Kroota.", 0, 1340040)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I barshed many rats at the gate to the Sprawl for Kroota.  Even though they were not what he had in mind, he still says they will come in useful.")
	GiveQuestReward(Quest, Player)
	AddItem(Spawn, 12866, 1)
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


