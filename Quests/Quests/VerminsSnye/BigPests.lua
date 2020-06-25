--[[
        Script Name		:       Quests/VerminsSnye/BigPests.lua
	Script Purpose	        :	Handles the quest, "Big Pests"
	Script Author	        :	premierio015
	Script Date		:	20.06.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	Vermin's Snye
	Quest Giver		:	large vermin notice
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Terminate some large tomb vermin", 5, 100, "This note was apparently meant for someone else here in these catacombs.", 611, 2000014)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
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

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've carried out the task stated in the note.")

	UpdateQuestDescription(Quest, "Interesting... I guess it was worth it for the experience. I suppose it couldn't hurt to take on adventures such as these.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


