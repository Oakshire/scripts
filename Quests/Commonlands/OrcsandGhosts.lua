--[[
	Script Name		:	orcs_and_ghosts.lua
	Script Purpose	:	Handles the quest, "Orcs and Ghosts"
	Script Author	:	premierio015
	Script Date		:	27.02.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Gerun Pontian
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay ten ghostly orcs", 10, 100, "I need to kill ten ghostly orcs.", 611, 330034)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll let you know when I've done this.")
	StartConversation(conversation, QuestGiver, Player, "Great, that's a relief to hear. Don't worry about the spectral defenders. Like the ghostly orcs, they imagine they are in some never-ending war. I don't think they even realize they're dead. It's sad, really. Anyway, ghostly orcs: take out ten of them, those were my orders.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the ghostly orcs.")

	AddQuestStepChat(Quest, 2, "I need to return to Gerun", 1, "I need to kill ten ghostly orcs.", 11, 330014)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Gerun.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the orcs.")

	UpdateQuestDescription(Quest, "I have slain the ghostly orcs for Gerun. He thanked me and paid me what he would've made for the task.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end