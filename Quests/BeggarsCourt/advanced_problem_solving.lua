--[[
	Script Name		:	advanced_problem_solving.lua
	Script Purpose	:	Handles the quest, "Advanced Problem Solving"
	Script Author	:	torsten
	Script Date		:	17.07.2022
	Script Notes	:	

	Zone			:	The Sprawl
	Quest Giver		:	Crispin Luvinius
	Preceded by		:	Problem Solving
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Defeat Giantslayer thugs", 5, 100, "I've heard that Giantslayer thugs hang out in the Sprawl.  I should pay them a little visit.  I can reach the Sprawl by using any of the bells in and around the City of Freeport.", 611, 1260013)
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
	UpdateQuestStepDescription(Quest, 1, "I've beat down five Giantslayer thugs")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've sent the Giantslayers a message that they shouldn't listen to vagrants who tell tall tales.")

	AddQuestStepChat(Quest, 2, "Talk with Crispin", 1, "I should let Crispin in the Sprawl know that he and his gang have nothing to worry about.  I can reach the Sprawl by using any of the bells in and around the City of Freeport.", 11, 1370126)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Crispin")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've let Crispin know these guys won't be bothering them anymore.")

	UpdateQuestDescription(Quest, "I've taken care of Crispin's problem. It seems that the guy isn't as tough as he acts.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

