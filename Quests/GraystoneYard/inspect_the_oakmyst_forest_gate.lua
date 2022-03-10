--[[
	Script Name		:	inspect_the_oakmyst_forest_gate.lua
	Script Purpose	:	Handles the quest, "Inspect the Oakmyst Forest Gate"
	Script Author	:	Dorbin
	Script Date		:	3/9/2022
	Script Notes	:	

	Zone			:	Graystone Yard
	Quest Giver		:	Captain Salomar
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to go to the Oakmyst Forest Gate in Graystone Yard.", 3, "I need to go to the Oakmyst Forest Gate in Graystone Yard.", 11, 858.96, -5.03, -203.71, 235 )
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
	
	UpdateQuestStepDescription(Quest, 1, "I visited the Oakmyst Forest Gate in Graystone Yard.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I visited the Oakmyst Forest Gate in Graystone Yard.")

	AddQuestStepChat(Quest, 2, "I need to report back to Captain Salomar.", 1, "I need to inform Captain Salomar that the Oakmyst Gate is intact.", 0, 2350043)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I checked the Oakmyst Forest Gate and reported back to Captain Salomar. The gate was intact.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end