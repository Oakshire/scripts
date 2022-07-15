--[[
	Script Name		:	antius_package.lua
	Script Purpose	:	Handles the quest, "Antius' Package"
	Script Author	:	torsten
	Script Date		:	15.07.2022
	Script Notes	:	

	Zone			:	Beggar's Court
	Quest Giver		:	Antius Vedrix
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Mirin.", 1, "I need to bring this package to an Iksar in Scale Yard, I think Antius said the Iksar was named Mirini, or Mirin, or something.", 11, 1390006)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Mirin.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I gave the package to Mirin, but now I have a message I need to give back to Antius.")
	
	AddQuestStepChat(Quest, 2, "I should return to Antius Vedrix.", 1, "I should return to Antius Vedrix.", 11, 1370008)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Antius Vedrix has been given his message. I have absolutely no idea what's going on, or what I might have gotten myself into. I think I'll just avoid these people for the time being.")
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

