--[[
	Script Name		:	swamp_water_stew.lua
	Script Purpose	:	Handles the quest, "Swamp Water Stew"
	Script Author	:	torsten
	Script Date		:	14.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Graktak Splatterblood
	Preceded by		:	Search for the Shrubbery
	Followed by		:	That Slippery Toad
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to collect some stew from another troll's cooking pot in the center of Big Bend.", 1, 100, "I need to collect some stew from another troll's cooking pot in the center of Big Bend.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I was able to collect the green watery stew, now I need to return it to Graktak.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I was able to suffer the smell long enough to collect the stew for Graktak, now I just need to give it him.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Graktak.", 1, "I need to return to Graktak to deliver the stew.", 11, 1340042)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)

	UpdateQuestDescription(Quest, "I have collected the stew, if you could call it that, for Graktak. He was very pleased when I gave it to him, and suggested that maybe I am not food after all.")
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


