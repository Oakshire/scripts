--[[
	Script Name		:	search_for_the_shrubbery.lua
	Script Purpose	:	Handles the quest, "Search for the Shrubbery"
	Script Author	:	torsten
	Script Date		:	14.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Graktak Splatterblood
	Preceded by		:	None
	Followed by		:	Swamp Water Stew
--]]


function Init(Quest)
	AddQuestStepHarvest(Quest, 1, "I need to collect shrubs from the center of Big Bend for Graktak.", 5, 100, "Graktak wants me to collect shrubs for his stew. They can be found in the center of Big Bend.", 194, 12772)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have collected the shrubs that Graktak wanted for his stew.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected what I hope is enough shrubs for the large troll Graktak.")
	
    AddQuestStepChat(Quest, 2, "I should return to Graktak.", 1, "I should return to Graktak to deliver the shrubs.", 11, 1340042)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I was able to find the shrubs of 'much goodness' for Graktak. I have determined that most trolls in Freeport only care for two things, killing and eating. Fortunately, it seems if I continue to help Graktak he may decide not to eat me.")
	GiveQuestReward(Quest, Player)
	
	while HasItem(Player, 12772) do --Shrubs
        RemoveItem(Player, 12772)
    end
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
	    Complete(Quest, QuestGiver, Player)
	end
end

