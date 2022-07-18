--[[
	Script Name		:	a_special_perfume.lua
	Script Purpose	:	Handles the quest, "A Special Perfume"
	Script Author	:	torsten
	Script Date		:	18.07.2022
	Script Notes	:	

	Zone			:	Longshadow Alley
	Quest Giver		:	Zelina T`Von
	Preceded by		:	None
	Followed by		:	For That Special Someone
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill small scorpions until I find a large scent gland.", 1, 15, "I need to travel to the Sunken City and gather a large scent gland from a small scorpion.", 94, 1240016)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found a large scent gland.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered a large scent gland from the scorpion.")
    
    AddQuestStepChat(Quest, 2, "I should return to Zelina.", 1, "I should return to Zelina to deliver the gland.", 11, 1380033)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Zelina has given me some coin for gathering the scent gland. She should have enough to be able to make that perfume she was planning on making. If she wants to make a perfume that smell like wine, I don't see why she doesn't just use wine. Go figure.")
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
