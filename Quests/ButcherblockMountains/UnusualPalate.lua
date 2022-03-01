--[[
	Script Name		:	Quests/ButcherblockMountains/UnusualPalate.lua
	Script Purpose	:	Handles the quest, "Unusual Palate"
	Script Author	:	jakejp
	Script Date		:	6/4/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Researcher Eruwun
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Collect rustfiend saliva glands.", 8, 100, "I must collect rustfiend saliva glands for Researcher Eruwun.", 109, 1080055, 1081092)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected enough saliva glands.")

	AddQuestStepChat(Quest, 2, "I must return to Researcher Eruwun.", 1, "I must collect rustfiend saliva glands for Researcher Eruwun.", 235, 1080007)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Researcher Eruwun.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected enough saliva glands.")

	UpdateQuestDescription(Quest, "I have returned the saliva glands to Researcher Eruwun and collected payment for my services.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end