--[[
	Script Name		:	ogre_watch.lua
	Script Purpose	:	Handles the quest, "Ogre Watch"
	Script Author	:	torsten
	Script Date		:	18.07.2022
	Script Notes	:	

	Zone			:	Longshadow Alley
	Quest Giver		:	Orian D`Rak
	Preceded by		:	None
	Followed by		:	Information Gathering From a Fishmonger
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Azreana", 1, "I need to deliver this package to Azreana.", 11, 1350030)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Azreana")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have delivered the package to Azreana.")
    
    AddQuestStepChat(Quest, 2, "I should return to Orian D`Rak.", 1, "I should return to Orian D`Rak in Longshadow Alley.", 11, 1380039)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Azreana was able to understand what the message said, and acted as if it was rather important. I might want to check back with Orian at a later time to see if he needs any more help.")
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


