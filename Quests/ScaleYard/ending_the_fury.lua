--[[
	Script Name		:	ending_the_fury.lua
	Script Purpose	:	Handles the quest, "Ending the Fury"
	Script Author	:	torsten
	Script Date		:	23.07.2022
	Script Notes	:	

	Zone			:	Scale Yard
	Quest Giver		:	Dunn Coldbrow
	Preceded by		:	None
	Followed by		:	Avoiding the Sea Beasties
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill five Darkblade furies.", 5, 100, "I need to kill five Darkblade furies in order to ensure the Barbarians' place on the front lines of the upcoming Orc assault. I should be able to find them living in the sewers.", 611, 1540017, 1540019, 1540041)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the Darkblade furies.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed all five of the Darkblade furies like I said I would.")
	
	AddQuestStepChat(Quest, 2, "I should return to Dunn.", 1, "I should return to Dunn in Scale Yard.", 11, 1390036)
    AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I've helped kill the Darkblade furies in the sewers. I have no idea what this has to do with the Barbarians killing the Orcs, though. I have a feeling Dunn's Iksar advisor, Verin Ithelz, is pursuing his own agenda rather than helping the Barbarians.")
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

