--[[
	Script Name		:	armor_for_watchman_fiercecry.lua
	Script Purpose	:	Handles the quest, "Armor for Watchman Fiercecry"
	Script Author	:	Dorbin
	Script Date		:	3/7/2022
	Script Notes	:	

	Zone			:	Graystone Yard
	Quest Giver		:	Watchman Fiercecry
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to pick up Watchman Fiercecry's armor.", 1, "I must go pick up a suit of armor from armorsmith Snowboot in the Graystone smithy.", 2, 2350018)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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

function Step1Complete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've picked up Watchman Fiercecry's armor.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've picked up the suit of armor from armorsmith Snowboot.")
	AddQuestStepChat(Quest, 2, "I need deliver this armorsuit to Watchman Fiercecry.", 1, "I deliver this suit of armor to Fiercecray in the Graystone.", 2,2350015)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")

end

function QuestComplete(Quest, QuestGiver, Player)

	UpdateQuestDescription(Quest, "Despite Snowboot giving me a bit of trouble when I went to pick up the suit of armor for Watchman Fiercecry, everything went pretty smoothly. I was surprised at the quality of the armor that was created. Truly fine indeed!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
