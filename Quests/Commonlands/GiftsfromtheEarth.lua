--[[
	Script Name		:	gifts_from_the_earth.lua
	Script Purpose	:	Handles the quest, "Gifts from the Earth"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	10.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to make my way to the Nektulos griffin station where the Ree cache is", 10, "I need to find the spot where the Shin'Ree treasure is buried and dig it up.", 11,  772, -46, -589)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	local conversation = CreateConversation()
	 AddConversationOption(conversation, "I'll be back.")
	  StartConversation(conversation, QuestGiver, Player, " \'' Useful \'', bah, my illiterate grandmother could write better then that.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have made my way to the Nektulos griffin station.")

	AddQuestStepObtainItem(Quest, 2, "I need to search south of the griffin station for the correct spot to dig", 1, 100, "I need to find the spot where the Shin'Ree treasure is buried and dig it up.", 11,  15096)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have dug up the Ree cache.")

	AddQuestStepChat(Quest, 3, "I need to return to Ventar", 1, "I need to find the spot where the Shin'Ree treasure is buried and dig it up.", 926, 330214)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Ventar.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have unearthed the Shin'Ree treasure and brought it to Ventar.")

	UpdateQuestDescription(Quest, "I found the buried Shin'Ree treasure and brought it to Ventar. He was not surprised that it was locked.")
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

