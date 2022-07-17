--[[
	Script Name		:	problem_solving.lua
	Script Purpose	:	Handles the quest, "Problem Solving"
	Script Author	:	torsten
	Script Date		:	17.07.2022
	Script Notes	:	

	Zone			:	The Sprawl
	Quest Giver		:	Crispin Luvinius
	Preceded by		:	None
	Followed by		:	Advanced Problem Solving
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill vagrant squatters", 10, 100, "I need to send a message to the vagrant squatters in the Ruins.  The message will involve a lot of them breathing dirt.  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 611, 1270004)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've dealt with the vagrants.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Those vagrants got the message loud and clear.")

	AddQuestStepChat(Quest, 2, "Talk with Crispin", 1, "I should let Crispin in Beggar's Court know that his problem has been solved.  I should get paid, too.  I can reach the Sprawl by using any of the bells in and around the City of Freeport.", 11, 1370126)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Crispin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've let Crispin know that I've solved his problem.")

	UpdateQuestDescription(Quest, "I've taken care of Crispin's problem.  I think it won't be too long before his business partner decides to do what he was told to do.")
	GiveQuestReward(Quest, Player)
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

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

