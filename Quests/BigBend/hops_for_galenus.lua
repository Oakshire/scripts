--[[
	Script Name		:	hops_for_galenus.lua
	Script Purpose	:	Handles the quest, "Hops for Galenus"
	Script Author	:	torsten
	Script Date		:	11.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Galenus Fulvianus
	Preceded by		:	Paying the Tab
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Hurska.", 1, "I need to find Hurska. She should be near the docks.", 11, 1340041)
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
	UpdateQuestStepDescription(Quest, 1, "I have spoken to Hurska.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Hurska gave me the hops and barley.")

	UpdateQuestDescription(Quest, "I have given Galenus his package of 'hops and barley'. I'm pretty certain it wasn't what he said it was, but I'd rather not ask any questions.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

