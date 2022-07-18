--[[
	Script Name		:	for_that_special_someone.lua
	Script Purpose	:	Handles the quest, "For That Special Someone"
	Script Author	:	torsten
	Script Date		:	18.07.2022
	Script Notes	:	

	Zone			:	Longshadow Alley
	Quest Giver		:	Zelina T`Von
	Preceded by		:	A Special Perfume
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find the banker.", 1, "I should bring this wine to the banker here in Longshadow Alley.", 11, 1380021)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have given the bottle to T'Val the banker.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I gave her husband the wine, which he enjoyed. He seemed worried that his wife was outside for some reason.")
    
    AddQuestStepChat(Quest, 2, "I should return to Zelina T`Von.", 1, "I should return to Zelina T`Von.", 11, 1380033)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "It seems that Zelina isn't married to T'val, and she tricked me into giving him some poisoned wine. I'm not sure what's going on between the two, but it looks like I just got myself involved in something more than I had expected.")
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
