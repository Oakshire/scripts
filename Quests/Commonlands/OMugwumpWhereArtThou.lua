--[[
	Script Name		:	o_mugwump_where_art_thou.lua
	Script Purpose	:	Handles the quest, "O' Mugwump Where Art Thou?"
	Script Author	:	premierio015
	Script Date		:	16.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find Mugwump", 1, "I need to find Mooshga's brother Mugwump in Nektulos Forest.", 11, 1790107)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll hurry back, Mooshga.")
	StartConversation(conversation, QuestGiver, Player, "Mooshga needs you go find brother Mugwump in dark forest. Brother always has herbs Mooshga need there. Tell brother Mooshga send you and brother know what to give you.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found Mugwump in Nektulos.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found Mugwump in Nektulos.")

	AddQuestStepChat(Quest, 2, "I should return to Mooshga", 1, "I should return to Mooshga and give her the herbs.", 194, 331133)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave Mooshga the herbs.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Mooshga.")

	UpdateQuestDescription(Quest, "I brought Mooshga back the special herbs from her brother.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

