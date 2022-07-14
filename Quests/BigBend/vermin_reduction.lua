--[[
	Script Name		:	vermin_reduction.lua
	Script Purpose	:	Handles the quest, "Vermin Reduction"
	Script Author	:	torsten
	Script Date		:	10.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Ratcatcher Zarbt
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill rats in Big Bend and the Thieves Way.", 6, 100, "Zarbt the Ratcatcher wants me to help him kill rats in Big Bend and the Thieves Way.", 99, 1540004, 1340004, 1340045)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the rats.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed the rats Zarbt wanted help with.")

	AddQuestStepChat(Quest, 2, "I need to speak to Zarbt.", 1, "Now that I've killed all these rats I should go back to Zarbt.", 11, 1340017)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Realizing the rodents are merely a byproduct of the city's inhabitants, I now know how futile my efforts were.  Not to mention having to shake down that ratcatcher to get next-to-nothing for my efforts.")
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

