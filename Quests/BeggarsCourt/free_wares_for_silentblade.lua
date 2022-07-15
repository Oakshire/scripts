--[[
	Script Name		:	free_wares_for_silentblade.lua
	Script Purpose	:	Handles the quest, "Free Wares for Silentblade"
	Script Author	:	torsten
	Script Date		:	15.07.2022
	Script Notes	:	

	Zone			:	Beggar's Court
	Quest Giver		:	Armsdealer Silentblade
	Preceded by		:	None
	Followed by		:	Get Rich Quick!
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill undead battlepriests and collect ten maces.", 10, 100, "I should head over to the Graveyard and collect ten maces from undead battlepriests.", 34, 1250008, 1250018)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've collected the maces from the battlepriests.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed the undead battlepriests and searched through their remains. I've managed to collect ten maces from their bones.")

    AddQuestStepChat(Quest, 2, "I should return to Silentblade.", 1, "I should return to Silentblade.", 11, 1370011)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Silentblade showed me that one of his secrets was to collect up old rusty weapons from the undead. Soaking the weapons in acid and giving them a new coat of paint make them look brand new. I'm not sure I would ever buy anything from him if I wanted to live longer than my next battle.")
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

