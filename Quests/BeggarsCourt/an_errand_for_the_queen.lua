--[[
	Script Name		:	an_errand_for_the_queen.lua
	Script Purpose	:	Handles the quest, "An Errand for the Queen"
	Script Author	:	torsten
	Script Date		:	15.07.2022
	Script Notes	:	

	Zone			:	Beggar's Court
	Quest Giver		:	Tullia Domna
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill five Giantslayer bashers", 5, 100, "I need to venture to the Sprawl and kill five Giantslayer Bashers.", 611, 1260022)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the Giantslayer bashers")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed the Giantslayer Bashers as part of the trick I'm playing on the mad woman.")

	AddQuestStepChat(Quest, 2, "I should return to Tullia Domna.", 1, "I should return to Tullia Domna.", 11, 1370000)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Tullia Domna, the mad woman in Beggar's Court, was going to knight me for killing the Giantslayer Bashers. Even though I was playing along with her insanity, I don't think I should go as far as giving her a sharp instrument to knight me with. This woman really needs help.")
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
