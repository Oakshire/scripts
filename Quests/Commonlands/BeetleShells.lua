--[[
	Script Name		:	beetle_shells.lua
	Script Purpose	:	Handles the quest, "Beetle Shells"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	27.02.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect six small emerald beetle shells", 6, 100, "I need to collect the beetle shells for Gerun.", 162, 330021, 330025, 330675)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
		 FaceTarget(QuestGiver, Player)
		   conversation = CreateConversation()
		   AddConversationOption(conversation, "All right.")
		   StartConversation(conversation, QuestGiver, Player, "Excellent. Make sure they aren't cracked or anything!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the beetle shells.")

	AddQuestStepChat(Quest, 2, "I need to bring these beetle shells to Gerun", 1, "I need to collect the beetle shells for Gerun.", 11, 330014)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Gerun the shells.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the beetle shells.")

	UpdateQuestDescription(Quest, "Gerun paid me for the beetle shells I gave him.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

