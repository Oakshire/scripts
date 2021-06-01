--[[
	Script Name		:	Quests/TheCommonlands/lion_mane_helm.lua
	Script Purpose	:	Handles the quest, "Lion Mane Helm"
	Script Author	:	premierio015
	Script Date		:	01.06.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	an unfinished helm(Item)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect and crush the wings of stone beetles", 10, 100, "If I'm going to turn this unfinished helmet into something a little nicer, I'll need to add a few things to it.  I should start by getting some wings from stone beetles in the commonlands to make some paint.", 86, 330745, 330070, 330066)
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
	UpdateQuestStepDescription(Quest, 1, "I've collected enough wings to create a sticky paint for the helm.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found a number of different things that I was able to add to my helm, turning it into a Lion Mane Helm.")

	AddQuestStep(Quest, 2, "I need to harvest twenty Desert Roots from the Commonlands", 20, 100,  "I'll need to make a paint for the helmet.", 2513)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've gathered enough roots to make another paint for the helm.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've made a paint for the helmet.")

	AddQuestStepKill(Quest, 3, "I need to kill the savannah lions in the Commonlands until I find a suitable mane for the helm", 1, 100, "I need to find a lion mane to attach to the helm.", 182, 330117)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've found a perfect mane to be used with my helm.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've found a mane.")

	UpdateQuestDescription(Quest, "Through much effort, I've been able to turn the unfinished helmet into to a nice Lion Mane Helm. <br> <br>")
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


