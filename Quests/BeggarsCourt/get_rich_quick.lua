--[[
	Script Name		:	get_rich_quick.lua
	Script Purpose	:	Handles the quest, "Get Rich Quick!"
	Script Author	:	torsten
	Script Date		:	15.07.2022
	Script Notes	:	

	Zone			:	Beggar's Court
	Quest Giver		:	Armsdealer Silentblade
	Preceded by		:	Free Wares for Silentblade
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Blort.", 1, "I need to bring this shipment of maces to Arms Dealer Blort in Big Bend.", 11, 1340023)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've spoken with Blort.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have given Arms Dealer Blort the maces he's been waiting on.")
	
	AddQuestStepChat(Quest, 2, "I should return to Silentblade.", 1, "I should return to Silentblade.", 11, 1370011)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I've been shown by Arms Dealer Silentblade that one of the best ways to make money as an arms dealer is to let other people make it for you. It seems the trick is to get a bunch of people to buy from you, and when they have enough recruits, they can sell those weapons to other Arms Dealers. I may look into this someday. It seems I could get rich quick this way!")
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


