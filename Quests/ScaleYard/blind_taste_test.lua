--[[
	Script Name		:	blind_taste_test.lua
	Script Purpose	:	Handles the quest, "Blind Taste Test"
	Script Author	:	torsten
	Script Date		:	23.07.2022
	Script Notes	:	

	Zone			:	Scale Yard
	Quest Giver		:	Bartender Icebrew
	Preceded by		:	Icebrew's Secret Recipe
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find a Dark Elf to test the Wheat Rust Stout.", 1, "I should look around the makeshift tavern in Longshadow Alley and find someone to drink this.", 11, 1380015)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have had Modian K'Jarr taste the brew.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found a Dark Elf by the name of Modian K'Jarr to drink the Wheat Rust Stout. He immediately went blind and I think he might have died.")

    AddQuestStepChat(Quest, 2, "I should return to Bartender Icebrew.", 1, "I should return to Bartender Icebrew in Scale Yard.", 11, 1390051)
    AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Icebrew the Bartender was pretty happy about this batch of Wheat Rust Stout.  Even though it rendered someone blind and nearly killed them.  I, for one, have no plans on drinking anything of his.")
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

