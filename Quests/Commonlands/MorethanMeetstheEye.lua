--[[
	Script Name		:	Quests/Commonlands/MorethanMeetstheEye.lua
	Script Purpose	:	Handles the quest, "More than Meets the Eye"
	Script Author	:	premierio015
	Script Date		:	19.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Captain Vertas
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I must scout the dervish camps to the west", 10, "I need to scout the dervish camps far to the west for Captain Vertas.", 11, 1244, -41, 341)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'm going, I'm going!")
	StartConversation(conversation, QuestGiver, Player, "Bring back any information you may find. Why are you still here?")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have scouted the dervish camps.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have scouted the dervish camps and need to report to Captain Vertas.")

	AddQuestStepChat(Quest, 2, "I need to report to Captain Vertas", 1, "I should report the results of my scouting efforts to Captain Vertas.", 11, 330178)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have reported my findings to Captain Vertas at the Crossroads.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have reported to Captain Vertas at the Crossroads.")

	UpdateQuestDescription(Quest, "I scouted the dervish camps and reported to Captain Vertas.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

