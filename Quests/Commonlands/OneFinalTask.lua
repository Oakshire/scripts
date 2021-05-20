--[[
	Script Name		:	Quests/Commonlands/OneFinalTask.lua
	Script Purpose	:	Handles the quest, "One Final Task"
	Script Author	:	premierio015
	Script Date		:	19.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Captain Vertas
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must eliminate the dervish commander, Ralio", 1, 100, "I need to kill the dervish commander, Ralio. He can be found in the dervish forward camp to the west.", 11, 330110)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, QuestGiver, Player, "May your path be silent, and your blade be true.")
end




function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I should report back to Captain Vertas at the Crossroads.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have eliminated Ralio and should report back to Captain Vertas.")

	AddQuestStepChat(Quest, 2, "I must return to Vertas", 1, "I have killed Ralio and should report back to Captain Vertas at the Crossroads.", 11, 330178)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I reported back to Captin Vertas.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have reported back to Captain Vertas at the Crossroads.")

	UpdateQuestDescription(Quest, "I killed the dervish commander, Ralio, in The Commonlands.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

