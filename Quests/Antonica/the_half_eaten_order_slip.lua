--[[
	Script Name		:	the_half_eaten_order_slip.lua
	Script Purpose	:	Handles the quest, "The Half Eaten Order Slip"
	Script Author	:	premierio015
	Script Date		:	08.05.2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Antonica
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak to the slip owner", 1, "I need to find the owner of the slip, a Walcott in Antonica perhaps.", 11, 120078)
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
	UpdateQuestStepDescription(Quest, 1, "Spoke to Farmer Walcott.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Farmer Walcott in Antonica.")

	AddQuestStepKill(Quest, 2, "Slay some witherstraw scarecrows", 2, 100, "I need to slay 2 witherstraw scarecrows in the crops outside of the North Gates of Qeynos.", 611, 120077, 121235)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Slew some witherstraw scarecrows.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I slew 2 witherstraw scarecrows in Antonica.")

	AddQuestStepChat(Quest, 3, "Speak to Farmer Walcott", 1, "I need to return to Farmer Walcott.", 11, 120078)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "Spoke to Farmer Walcott.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I returned to speak to Farmer Walcott.")

	UpdateQuestDescription(Quest, "I aided Farmer Walcott in his fight against evil scarecrows in his fields. I slew two of the creatures for him.")
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
