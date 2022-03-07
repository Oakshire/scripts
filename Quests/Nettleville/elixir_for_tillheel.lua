--[[
	Script Name		:	elixir_for_tillheel.lua
	Script Purpose	:	Handles the quest, "Elixir for Tillheel"
	Script Author	:   Dorbin
	Script Date		:	3/6/2022
	Script Notes	:

	Zone			:	Nettleville
	Quest Giver		:	Garion Dunam
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find Assistant Tillheel in Graystone Yard.", 1, "I need to deliver an elixir to Assistant Tillheel in Graystone Yard.", 8, 2350056)
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
	UpdateQuestStepDescription(Quest, 1, "I have found Assistant Tillheel.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found Assistant Tillheel.")

	AddQuestStepChat(Quest, 2, "I need to return to Garion in Nettleville.", 1, "I need to deliver this delivery payment to Garion Dunam in Nettleville", 401, 2330027)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I returned to Garion with his payment.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Garion.")

	UpdateQuestDescription(Quest, "I delivered the elixir of mistmire to Assistant Tillheel. I then returned his payment to Alchemist Garion Dunam. Garion allowed me to keep the change and even threw in a bag as payment for my service.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)

	end
end
