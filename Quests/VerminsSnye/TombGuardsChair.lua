--[[
	Script Name		:	Quests/VerminsSnye/TombGuardsChair.lua
	Script Purpose	        :	Handles the quest, "Tomb Guard's Chair"
	Script Author	        :	premierio015
	Script Date		:	04.06.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	Vermin's Snye
	Quest Giver		:	Tomb Guard's Broken Chair 
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Look for chair legs and a back", 1, 100, "I'm looking for replacement pieces for a tomb guard chair down here in the Vermin's Snye.", 2364, 2000012, 2000020)
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
	UpdateQuestStepDescription(Quest, 1, "I found some pieces I can use to rebuild the chair.")

	AddQuestStepKill(Quest, 2, "Look for more chair legs and a seat", 1, 100, "I'm looking for replacement pieces for a tomb guard chair down here in the Vermin's Snye.", 2358, 2000012, 2000020)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've found some pieces I can use to rebuild the chair.")

	AddQuestStepKill(Quest, 3, "Look for a chair cushion", 1, 100, "I'm looking for replacement pieces for a tomb guard chair down here in the Vermin's Snye.", 1095, 2000012, 2000020)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've found some pieces I can use to rebuild the chair.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found the pieces needed to rebuild the broken chair.")

	UpdateQuestDescription(Quest, "I was able to find the pieces needed to rebuild the tomb guard's chair.  I could use this in my home if I so desired.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

