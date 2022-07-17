--[[
	Script Name		:	joining_the_gang.lua
	Script Purpose	:	Handles the quest, "Joining the Gang"
	Script Author	:	torsten
	Script Date		:	15.07.2022
	Script Notes	:	

	Zone			:	Sunken City
	Quest Giver		:	Manius Galla
	Preceded by		:	None
	Followed by		:	Donations from the Banker
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill Blackshield raiders", 10, 100, "I need to kill some of the Blackshields in the Sunken City.  I can reach the Sunken City by using any of the bells in and around the City of Freeport.", 611, 1240002)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the Blackshield raiders.")
    
	AddQuestStepChat(Quest, 2, "I should return to Manius.", 1, "I've let Manius know that I've done what it takes to pass his test.", 11, 1370127)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I've killed the raider lackeys as Manius asked, completing my test. He said he'll think about letting me join, as he hasn't decided yet. I should check back with him later.")
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
