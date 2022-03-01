--[[
	Script Name		:	StoptheProblemattheSource.lua
	Script Purpose	:	Handles the quest, "Stop the Problem at the Source"
	Script Author	:	FeaRFx
	Script Date		:	26/01/2017
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]

local StopTheProblem = 198

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Alerica.", 1, 100, "I need to take out the Sableflame adherents and Alerica.", 11, 340128)
	AddQuestStepKill(Quest, 2, "I need to kill Sableflame adherents.", 8, 100, "I need to take out the Sableflame adherents and Alerica.", 611, 340126)
	AddQuestStepCompleteAction(Quest, 1, "KillAlerica")
	AddQuestStepCompleteAction(Quest, 2, "KillMobs")
end


function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, StopTheProblem, 1) and QuestStepComplete(Player, StopTheProblem, 2) then
		UpdateQuestTaskGroupDescription(Quest, 1, "I have slain Alerica and the adherents.")
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function KillAlerica(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain Alerica.")
	CheckProgress(Quest, QuestGiver, Player)
end

function KillMobs(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have slain the Sableflame adherents.")
	CheckProgress(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	--UpdateQuestStepDescription(Quest, 3, "I have spoken with Gaussnitra V'Kilana.")
	--UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Gaussnitra V'Kilana.")

	--UpdateQuestDescription(Quest, "I have slain Alerica and the Sableflame adherents.")
	SetCompleteFlag(Quest, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if QuestStepIsComplete(Player, StopTheProblem, 1) then
	    KillAlerica(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, StopTheProblem, 2) then
	    KillMobs(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end
