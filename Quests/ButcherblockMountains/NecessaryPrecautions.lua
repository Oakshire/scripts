--[[
	Script Name		:	Quests/ButcherblockMountains/NecessaryPrecautions.lua
	Script Purpose	:	Handles the quest, "Necessary Precautions"
	Script Author	:	jakejp
	Script Date		:	6/4/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Guard Tellik
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak with Assistant Deldry.", 1, "I must take the proposal to Assistant Deldry.", 235, 1080022)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Assistant Deldry.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have given the proposal to Assistant Deldry.")

	UpdateQuestDescription(Quest, "I have delivered the proposal to Assistant Deldry.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end