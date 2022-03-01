--[[
	Script Name		:	PreparingaRitual.lua
	Script Purpose	:	Handles the quest, "Preparing a Ritual"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	26/01/2017
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "I need Fire Tear gems from Sableflame Crater.", 5, 100, "I need to collect Fire Tear gems for Belarshalee Do'Torlyl.", 771, 7262)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the Fire Tears.")

	AddQuestStepChat(Quest, 2, "I need to return to Belarshalee Do'Torlyl.", 1, "I need to collect Fire Tear gems for Belarshalee Do'Torlyl.", 11, 340173)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Belarshalee Do'Torlyl.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have brought the Fire Tear gems for Belarshalee Do'Torlyl.")

	UpdateQuestDescription(Quest, "I have brought the Fire Tears back to Belarshalee Do'Torlyl.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end