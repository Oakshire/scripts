--[[
    Script Name     :   Quests/TheCommonlands/help_the_troll_get_ahead_.lua
	Script Purpose	:	Handles the quest, "Help the Troll Get Ahead"
	Script Author	:	premierio015
	Script Date		:	04.06.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands, Nektulos Forest
	Quest Giver		:	Kregnok Legbreaker
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Get the head of a Nightfall giant", 1, 100, "I need the head from a Nightfall giant.", 2492, 1790120)
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
	UpdateQuestStepDescription(Quest, 1, "I got the head Kregnok needs")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've severed the head of the Nightfall giant for Kregnok.")

	AddQuestStepChat(Quest, 2, "I need to return to Kregnok in the Commonlands", 1, "Kregnok Legbreaker in the Commonlands still needs me to take him the head of the giant.", 11, 330219)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've returned to Kregnok with the head")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've delivered the head of the giant to Kregnok.")

	UpdateQuestDescription(Quest, "Sadly, I had to put Kregnok Legbreaker down after I returned the head to him.  Apparently he felt proving himself meant he needed to kill me too.  Smart plan for a troll though... hey... maybe... no... it couldn't be... could his request have been to trick someone into killing a giant for him?")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
