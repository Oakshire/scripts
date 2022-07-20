--[[
	Script Name		:	silenced_speech.lua
	Script Purpose	:	Handles the quest, "Silenced Speech"
	Script Author	:	torsten
	Script Date		:	20.07.2022
	Script Notes	:	

	Zone			:	Longshadow Alley
	Quest Giver		:	Captain L`Nek
	Preceded by		:	The Truth is out There
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Slay Dervish crooks in the Sprawl until Kirs' signet ring is found.", 1, 10, "I need to find out which one of the Dervish crooks is Kirs.  I'll need to slay all of the crooks until I find something indentifying him... or her.", 596, 1260000)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found a signet ring on who I believe to be Kirs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found a ring with the name Kirs on it.  I'm pretty certain this Dervish crook was the one causing all of these problems.")
    
    AddQuestStepChat(Quest, 2, "I should return to Captain L'Nek.", 1, "I should return to Captain L'Nek in Longshadow Alley.", 11, 1380010)
    AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "The Captain didn't necessarily give me the reward I was expecting for helping him with Kirs.  I guess I shouldn't have expected much.")
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
