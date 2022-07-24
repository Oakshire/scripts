--[[
	Script Name		:	tasty_tears_of_the_thralls.lua
	Script Purpose	:	Handles the quest, "Tasty Tears of the Thralls"
	Script Author	:	torsten
	Script Date		:	23.07.2022
	Script Notes	:	

	Zone			:	Scale Yard
	Quest Giver		:	Dyerth Shiraz
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Collect tears from Brokentusk prophets", 4, 100, "Dyerth said I should be able to find some Brokentusk prophets in the Ruins, so that's where I should start.", 2489, 1270009)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the tears from the orcs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the tears of four Brokentusk prophets.")

    AddQuestStepChat(Quest, 2, "I should return to Dyerth Shiraz.", 1, "I should return to Dyerth Shiraz in Scale Yard.", 11, 1390054)
    AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Dyerth appreciated my helping her with making her drink.  Perhaps someday in the future I may call on her to pay back the favor.")
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

