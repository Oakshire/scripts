--[[
	Script Name		:	door_to_door_anger.lua
	Script Purpose	:	Handles the quest, "Door to Door Anger"
	Script Author	:	torsten
	Script Date		:	21.07.2022
	Script Notes	:	

	Zone			:	Scale Yard
	Quest Giver		:	Evelyn Stoutfist
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Plordo.", 1, "I need to get Plordo the gnome to give Evelyn's money back.", 11, 1360008)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Plordo.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Plordo is quite adamant over the fact that he won't offer a refund.")

	AddQuestStepChat(Quest, 2, "I should return to Evelyn.", 1, "I should return to Evelyn in Scale Yard.", 11, 1390023)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Evelyn Stoutfist was pretty upset when she heard the news about not getting a refund. I think she's planning to do something to the gnome.")
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

