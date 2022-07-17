--[[
	Script Name		:	exacting_revenge_on_the_crabs.lua
	Script Purpose	:	Handles the quest, "Exacting Revenge on the Crabs"
	Script Author	:	Neatz09	
	Script Date		:	12/31/2018 (16.7.2022 by torsten, added more crab IDs)
	Script Notes	:	Examined item (a twitching crab claw)

	Zone			:	Sunken City
	Quest Giver		:	item #3034
	Preceded by		:	None
	Followed by		:	None
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill crabs", 30, 100, "I need to kill crabs in the Sunken City until my rage subsides.  I can reach the Sunken City by using any of the bells in and around the City of Freeport.", 77, 1240007, 1240008, 1240037, 1240045)
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
	UpdateQuestStepDescription(Quest, 1, "I have killed many crabs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed many crabs and this task now bores me.")

	UpdateQuestDescription(Quest, "Many crabs were slain in retaliation for that pinch.  I feel much better now. <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
