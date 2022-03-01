--[[
	Script Name		:	Quests/TheSerpentSewer/channel_mender_tea.lua
	Script Purpose	:	Handles the quest, "Channel Mender Tea"
	Script Author	:	premierio015
	Script Date		:	03.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Serpent Sewer
	Quest Giver		:	Tea leaves(item)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Find more of the tea leaves that the channel menders have.", 5, 50, "I'm sure I can find more of these tea leaves with the crazed channel menders.", 336, 1550012, 1550013, 1550049, 1550050)
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
	UpdateQuestStepDescription(Quest, 1, "I've found some more of the channel mender tea leaves.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've acquired an ample supply of the channel mender tea leaves.")
    if HasItem(Player, 13874) then
    RemoveItem(Player, 13874)
    end
	UpdateQuestDescription(Quest, "I've acquired an ample supply of the channel menders tea leaves, it should last me for a good while.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


