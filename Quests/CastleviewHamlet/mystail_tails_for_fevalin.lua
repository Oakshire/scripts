--[[
    Script Name    : Quests/CastleviewHamlet/mystail_tails_for_fevalin.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.28 05:01:28
    Script Purpose : 

        Zone       : CastleviewHamlet
        Quest Giver: Fevalin 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill some mystail yearlings.", 6, 80, "I must collect tails from mystail yearlings.", 172, 1950009)
	AddQuestStepCompleteAction(Quest, 1, "RatsDead")
	UpdateQuestZone(Quest, "Oakmyst Forest")
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

function RatsDead(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed some mystail yearlings.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected six mystail yearling tails.")

	AddQuestStepChat(Quest, 2, "I must return to Fevalin.", 1, "I must gives these mystrat tails to Fevalin.", 172, 2360039)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
	UpdateQuestZone(Quest, "Castleview Hamlet")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have returned to Fevalin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have delivered the mystrat tails to Fevalin.")

	UpdateQuestDescription(Quest, "I collected all six mystail yearling tails for Merchant Fevalin. He has rewarded for my service.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		RatsDead(Quest, QuestGiver, Player)
	end
		if Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
