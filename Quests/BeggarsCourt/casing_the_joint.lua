--[[
	Script Name		:	casing_the_joint.lua
	Script Purpose	:	Handles the quest, "Casing the Joint"
	Script Author	:	torsten
	Script Date		:	15.07.2022
	Script Notes	:	

	Zone			:	Beggar's Court
	Quest Giver		:	Lucius Vulso
	Preceded by		:	None
	Followed by		:	Into The Sewers For Lucius
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Talk to Banker Kaman, in the bank in Stonestair Byway.", 1, "Talk to Banker Kamen, in the bank in Stonestair Byway.", 11, 1350044)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Banker Kamen.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Banker Kamen.")
	
	AddQuestStepChat(Quest, 2, "I should return to Lucius Vulso.", 1, "I should return to Lucius Vulso.", 11, 1370036)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I don't know if Lucius was happy with the result, but he has another task for me.")
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

