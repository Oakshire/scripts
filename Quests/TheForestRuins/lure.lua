--[[
	Script Name		:	lure.lua
	Script Purpose	:	Handles the quest, "Lure"
	Script Author	:	Dorbin
	Script Date		:	2/27/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Forest Ruins
	Quest Giver		:	Lieutenant Germain
	Preceded by		:	Uncover the Caches
	Followed by		:	Reinforcements
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect the head of Malox.", 1, 100, "Lieutenant Germain has asked one final thing of me within the Forest Ruins: the head of Malox.", 1221, 1960066)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the head of Malox.")

	AddQuestStepChat(Quest, 2, "I need to return to Lieutenant Germain.", 1, "Lieutenant Germain has asked one final thing of me within the Forest Ruins: the head of Malox.", 11, 1960005)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Lieutenant Germain.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have obtained the head of Malox.")

	UpdateQuestDescription(Quest, "I have slain Malox and taken his head. Lieutenant Germain says that we were lucky that we stopped them when we did, but that there may still be much work ahead of us.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end