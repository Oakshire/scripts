--[[
	Script Name		:	rainus.lua
	Script Purpose	:	Handles the quest, "Rainus"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	27.02.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find Rainus Canton", 1, "I need to speak with Rainus Canton.", 11, 330246)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	   local  conversation = CreateConversation()
	    AddConversationOption(conversation, "Thank you.")
	    StartConversation(conversation, QuestGiver, Player, "May the Overlord hasten your path, "..GetName(Player)..".")
end

function Declined(Quest, QuestGiver, Player)
	
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have found Rainus Canton.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Rainus Canton.")

	UpdateQuestDescription(Quest, "I found Rainus Canton.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
