--[[
	Script Name		:	avoiding_the_sea_beasties.lua
	Script Purpose	:	Handles the quest, "Avoiding the Sea Beasties"
	Script Author	:	torsten
	Script Date		:	23.07.2022
	Script Notes	:	

	Zone			:	Scale Yard
	Quest Giver		:	Dunn Coldbrow
	Preceded by		:	Ending the Fury
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill ten orcs in the Commonlands.", 10, 100, "I need to travel to the Commonlands and kill ten orcs.", 611, 330068, 330126, 330128, 330129, 330202, 330204, 330218, 330249, 330250, 330268, 330265, 330323, 330327)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've killed the orcs in the Commonlands.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed the orcs as I was tasked by the Warchief.")

    AddQuestStepChat(Quest, 2, "I should return to Dunn.", 1, "I should return to Dunn in Scale Yard.", 11, 1390036)
    AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Dunn Coldbrow has chosen to ask Verin why I wasn't killed by Lucan when I killed the orcs.  I think I can see how his 'advisor' may be the real Warchief.  Dunn doesn't seem to have much common sense, only a very strong presence.")
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
