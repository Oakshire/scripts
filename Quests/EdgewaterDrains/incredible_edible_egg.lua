--[[
	Script Name		:	Quests/EdgewaterDrains/incredible_edible_egg.lua
	Script Purpose	:	Handles the quest, "Incredible Edible Egg"
	Script Author	:	premierio015
	Script Date		:	05.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Edgewater Drains
	Quest Giver		:		Sewage Viper Egg(Item)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Stock up on sewage viper eggs.", 5, 50, "Find the sewage vipers down in the Edgewater Drains and look for more of their eggs.", 2149, 1560024, 1560028)
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
	UpdateQuestStepDescription(Quest, 1, "I've gotten another viper egg.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've taken enough viper eggs for now.")
    if HasItem(Player, 12107) then
    RemoveItem(Player, 12107)
    end
	UpdateQuestDescription(Quest, "I've taken enough of the viper eggs to last me a little while and this should suffice.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


