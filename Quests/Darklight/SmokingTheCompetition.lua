--[[
	Script Name		:	SmokingtheCompetition.lua
	Script Purpose	:	Handles the quest, "Smoking the Competition"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	23/01/2017
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill the razormaw that swim in the Searing Tendril and bring them back to Dirzdia.", 8, 100, "Dirzdia would like me to kill the razormaw that swim in the Searing Tendril.", 139, 340095)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the razormaw.")

	AddQuestStepChat(Quest, 2, "I need to bring the razormaw flesh back to Dirzdia.", 1, "Dirzdia would like me to kill the razormaw that swim in the Searing Tendril.", 139, 140025)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Dirzdia the razormaw flesh.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the razormaw and brought their flesh back to Dirzdia.")

	UpdateQuestDescription(Quest, "I have brought Dirzdia the razormaw flesh she wanted.")
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