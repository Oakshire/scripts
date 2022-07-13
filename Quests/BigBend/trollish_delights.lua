--[[
	Script Name		:	trollish_delights.lua
	Script Purpose	:	Handles the quest, "Trollish Delights"
	Script Author	:	torsten
	Script Date		:	12.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Braz Gutpounder
	Preceded by		:	A Subtle Reminder
	Followed by		:	Troll Patrol
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Club down four Big Bend rats and take their carcasses. Braz said they should be by the gate to the Sprawl.", 4, 100, "Braz Gutpounder would like some food. It's a hungry job explaining the nuances of being a troll.", 136, 1340045)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Braz is going to feast well on these plump n' juicy rascals!")
	UpdateQuestTaskGroupDescription(Quest, 1, "Braz will no doubt appreciate the additional touch. It's the little things that count.")

    AddQuestStep(Quest, 2, "I should cook the rats.", 1, 100, "I should find a way to cook the rats.", 0)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I have cooked the rats!")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have cooked the rats at The Torch of Oggok")

    AddQuestStepChat(Quest, 3, "I should deliver the rats.", 1, "I should deliver the cooked rats to Braz.", 0, 1340039)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "How could anyone know that Braz wouldn't like his rats cooked? It seems like such a natural thing to do, really. Don't eat the food unless it's cooked. Isn't that taught to everyone?")
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
	    QuestComplete(Quest, QuestGiver, Player)
	end
end

