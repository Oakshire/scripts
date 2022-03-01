--[[
	Script Name		:	Quests/Commonlands/TroubleAbout.lua
	Script Purpose	:	Handles the quest, "Trouble About"
	Script Author	:	premierio015
	Script Date		:	19.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Captain Vertas
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill the orc emissary", 1, 100, "I must kill the orc emissary for Captain Vertas.", 11, 330326)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "I know you will. Return to me immediately once this is complete.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I killed the emissary. I should report what I found to Captain Vertas.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed the orc emissary.")

	AddQuestStepChat(Quest, 2, "I should return to Captain Vertas", 1, "I should return to Captain Vertas in the Commonlands and report my findings.", 185, 330178)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave the note to Captain Vertas.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to the Crossroads and reported my findings to Captain Vertas.")

	UpdateQuestDescription(Quest, "I returned to Captain Vertas with the note I received off the orc emissary.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
