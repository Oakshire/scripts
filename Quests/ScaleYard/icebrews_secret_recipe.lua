--[[
	Script Name		:	icebrews_secret_recipe.lua
	Script Purpose	:	Handles the quest, "Icebrew's Secret Recipe"
	Script Author	:	torsten
	Script Date		:	23.07.2022
	Script Notes	:	

	Zone			:	Scale Yard
	Quest Giver		:	Bartender Icebrew
	Preceded by		:	None
	Followed by		:	Blind Taste Test
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Collect jars of rust monster blood", 10, 100, "I should head out to the Sunken City and collect ten vials of blood from some of those rust monsters.", 180, 1240011, 1240013)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the jars.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've collected up the blood from the Rust Monsters that Icebrew wanted. I guess he was right... this blood DOES look like rust.")
    
    AddQuestStepChat(Quest, 2, "I should return to Bartender Icebrew.", 1, "I should return to Bartender Icebrew in Scale Yard.", 11, 1390051)
    AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Icebrew has given me my money and my free beer. I think I'll hold onto the beer for now... it seems more like a weapon than a drink.")
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

