--[[
    Script Name    : Quests/TheWillowWood/the_willow_wood_memorial.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.19 06:02:08
    Script Purpose : 

        Zone       : TheWillowWood
        Quest Giver: Rebeka Lori
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to find the memorial in the Willow Wood.", 3, "I should see that memorial that Rebeka spoke of.", 0, 826.4, -21.43, -661.97)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
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

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I found the memorial in the Willow Wood.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the memorial that Rebeka had told me about.")

	UpdateQuestDescription(Quest, "I found the memorial that Rebeka Lori spoke of.  I would like to hold to the same hope that Rebeka has that I may see my friends again some day.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
