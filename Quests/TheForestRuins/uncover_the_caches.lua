--[[
	Script Name		:	uncover_the_caches.lua
	Script Purpose	:	Handles the quest, "Uncover the Caches"
	Script Author	:	Dorbin
	Script Date		:	2/27/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Forest Ruins
	Quest Giver		:	Acting Lieutenant Germain
	Preceded by		:	Returning to the Disturbance
	Followed by		:	Lure
	NOTE: NEEDS activation command from Hidden Tools applied here.
--]]


function Init(Quest)
	AddQuestStepSpell(Quest, 1, "I need to destroy the tools hidden around the Forest Ruins.", 8, 100, "Lieutenant Germain has asked that I destroy the hidden gnoll caches that can be found in the Forest Ruins.", 611, "--[[ ID's --]]")
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "", "", "ponder", 0, 0)

	AddConversationOption(conversation, "You're welcome.", "dlg_16_2")
	StartConversation(conversation, NPC, Spawn, "We'll drive these gnolls out yet! Thanks for helping.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have destroyed the hidden tools.")

	AddQuestStepChat(Quest, 2, "I need to return to Lieutenant Germain now that I have destroyed the hidden tools.", 1, "Lieutenant Germain has asked that I destroy the hidden gnoll caches that can be found in the Forest Ruins.", 11, 1960005)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken to Lieutenant Germain.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have destroyed the hidden gnoll caches.")

	UpdateQuestDescription(Quest, "I have destroyed the gnoll caches within the Forest Ruins.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
