--[[
	Script Name		:	qeynos_alignment.lua
	Script Purpose	:	Handles the quest, "Qeynos Alignment"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	8/29/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Hallmark
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must speak with Duke Ferrin.", 1, "Duke Ferrin will arrange transport for me to Qeynos.", 11, 0) --Needs Duke Ferrin
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
	UpdateQuestStepDescription(Quest, 1, "I spoke with Duke Ferrin.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Duke Ferrin has arranged transport for me to Qeynos.")

	AddQuestStepChat(Quest, 2, "I must find the Steward", 1, "I have been instructed to seek out the Steward when I arrive in Qeynos.  I should ring the bell on the docks to book passage to the city.", 11, 2340166,2330168,2350184,2380173,2360174,2370111)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I found the Steward")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with the Steward.")

	UpdateQuestDescription(Quest, "I have successfully arrived in Qeynos and gotten situated here.  I would prefer better quarters, and to live in the city, but I suppose I'll have to work towards that on my own.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
