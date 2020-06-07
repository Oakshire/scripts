--[[
	Script Name		:	Quests/VerminsSnye/CoinOfAnAdept.lua
	Script Purpose	        :	Handles the quest, "Coin of an Adept"
	Script Author	        :	premierio015
	Script Date		:	04.06.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	Vermin's Snye
	Quest Giver		:	Bloodsaber adept coin.
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Look for more unusual coins on the outlaw adepts", 6, 100, "I found a rather unusual coin on one of the Bloodsaber adpets. I'm going to try and find more.", 1763, 2000016)
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
	UpdateQuestStepDescription(Quest, 1, "")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found many of the coins carried by the Bloodsayber adepts. I wonder what they're used for.")

	UpdateQuestDescription(Quest, "I've found many more of the coins the Bloodsaber adepts carry. I wonder what purpose they serve?")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

