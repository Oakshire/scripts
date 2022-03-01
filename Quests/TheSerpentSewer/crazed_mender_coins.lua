--[[
	Script Name		:	Quests/TheSerpentSewer/crazed_mender_coins.lua
	Script Purpose	:	Handles the quest, "Crazed Mender Coins"
	Script Author	:	premierio015
	Script Date		:	03.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Serpent Sewer
	Quest Giver		:	Crazed Mender Coin (Item)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Keep an eye out for more of those odd gnomish coins.", 1, 10, "I'm trying to find more of these odd gnomish coins in an effort to revel their purpose.", 1382, 1550012, 1550013, 1550049, 1550050)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
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


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've found another one of those odd gnomish coins.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found a couple more of these coins and I'm still at a loss as to their purpose.")
    if HasItem(Player, 5646) then
    RemoveItem(Player, 5646)
    end
	UpdateQuestDescription(Quest, "I have found a couple more of these coins and I'm still at a loss as to their purpose.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

