--[[
	Script Name		:	quelling_the_rebellion.lua
	Script Purpose	:	Handles the quest, "Quelling the Rebellion"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	4/29/2023
	Script Notes	:	Cynnar

	Zone			:	World Event
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]

local JethTheSpy = 5590962
local InfiltratorKath = 5590963


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Find and slay J.T.S.", 1, 100, "Lurking somewhere in the city is a traitor. Find and slay this &quot;J.T.S.&quot;", 11, JethTheSpy)
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
	UpdateQuestStepDescription(Quest, 1, "Jeth's dead... Jeth's dead.")
	UpdateQuestTaskGroupDescription(Quest, 1, "The elimination of Jeth has revealed that yet another traitor lurks within the city.")

	AddQuestStepLocation(Quest, 2, "Search the city of Freeport for the second infiltrator.", 1, "There are no clues to the location of this new traitor, so I must search thoroughly.", 11, -113, -11, -82)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "The second traitor has been located.")
	UpdateQuestTaskGroupDescription(Quest, 2, "The second infiltrator has been holed up in the Jade Tiger's Den.")

	AddQuestStepKill(Quest, 3, "Destroy the second traitor before she can free Geraufl.", 1, 100, "Slay the infiltrator before she manages to free Geraufl.", 11, InfiltratorKath)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "With the death of the second traitor, the threat has ended... for now.")
	UpdateQuestTaskGroupDescription(Quest, 3, "Though the last Qeynosian has been sent to her grave, it may benefit the city if I simply kill Geraufl.")

	UpdateQuestDescription(Quest, "I have unraveled the traitorous plans of these frogs. It may be better that I simply destroy the one in the jail before he can cause more trouble or try and escape.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
