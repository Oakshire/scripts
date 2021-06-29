--[[
	Script Name		:	the_stolen_chest.lua
	Script Purpose	:	Handles the quest, "The Stolen Chest"
	Script Author	:	EmemJR
	Script Date		:	10/7/2019
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Thieves' Way
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]

local itemId = 2115
function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill one darkblade brigand.", 1, 100, "I must kill a darkblade brigand.", 11, 1540018,1540023)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
    while HasItem(Player, itemId, 1) do
        RemoveItem(Player, itemId)
    end
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have killed one darkblade brigand.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed a darkblade brigand.")
    RemoveItem(Player, ItemId)
	UpdateQuestDescription(Quest, "I found a bounty that promised a reward for the return of a stolen chest.  After I recovered the chest from the Darkblade brigands, I returned it to Anrean Velvinna. She awarded me some money for returning the chest.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end