--[[
	Script Name		:	the_darkblade_dagger.lua
	Script Purpose	:	Handles the quest, "The Darkblade Dagger"
	Script Author	:	EmemJR
	Script Date		:	10/7/2019
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Thieves' Way
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]

local itemId = 3767
function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill some diseased ratongas.", 10, 100, "I must kill ten diseased ratonga to unlock the power in this blade.", 611, 1540002, 1540022, 1540072, 1540024, 1540028, 1540021, 1540073)
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
	UpdateQuestStepDescription(Quest, 1, "I have killed some diseased ratongas.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed ten diseased ratonga.")
    RemoveItem(Player, itemId)
	UpdateQuestDescription(Quest, "I found a call to duty hidden within the hilt of a Darkblade dagger. In the hope of benefiting from this order and gaining the rewards it promised, I killed ten diseased ratonga. The fulfillment of the duty by my hand awakened an enchantment that had been stored within the blade.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
