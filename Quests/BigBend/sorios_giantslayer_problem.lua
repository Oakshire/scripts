--[[
	Script Name		:	sorios_giantslayer_problem.lua
	Script Purpose	:	Handles the quest, "Sorio's Giantslayer Problem"
	Script Author	:	torsten
	Script Date		:	11.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Captain Sorio
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill ten Giantslayer Brutes.", 10, 100, "I need to kill ten of the Giantslayer Thugs to send them a message that the Freeport Militia shouldn't be messed with.", 611, 1260013)
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
	UpdateQuestStepDescription(Quest, 1, "I have killed ten Giantslayer Brutes.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed ten members of the Giantslayer Thug gang.")

	UpdateQuestDescription(Quest, "Guard Captain Sorio was surprised that I actually did what he asked. He offered me some coin and a militia wristband as payment for my help.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

