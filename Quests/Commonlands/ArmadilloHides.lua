--[[
	Script Name		:	armadillo_hides.lua
	Script Purpose	:	Handles the quest, "Armadillo Hides"
	Script Author	:	premierio015
	Script Date		:	27.02.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Gerun Pontian
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect ten armadillo hides for Gerun", 10, 100, "I need to collect the armadillo hides for Gerun.", 2047, 330028, 330024)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	 FaceTarget(QuestGiver, Player)
	  conversation = CreateConversation()
	 AddConversationOption(conversation, "I'll be right back.")
	 StartConversation(conversation, QuestGiver, Player, "I'm sure you will.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the armadillo hides.")

	AddQuestStepChat(Quest, 2, "I need to bring these hides to Gerun", 1, "I need to collect the armadillo hides for Gerun.", 11, 330014)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Gerun the hides.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have given Gerun the armadillo hides.")

	UpdateQuestDescription(Quest, "I have given Gerun the armadillo hides. He thanked me and paid me my cut.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
