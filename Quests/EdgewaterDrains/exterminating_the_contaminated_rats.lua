--[[
	Script Name		:	Quests/EdgewaterDrains/exterminating_the_contaminated_rats.lua
	Script Purpose	:	Handles the quest, "Exterminating the Contaminated Rats"
	Script Author	:	premierio015
	Script Date		:	05.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Edgewater Drains
	Quest Giver		:	an embossed collar(Item)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay seven contaminated rats.", 7, 100, "I need to slay seven contaminated rats!", 99, 1560003, 1560059)
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
	UpdateQuestStepDescription(Quest, 1, "I killed seven contaminated rats.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I killed seven contaminated rats.")
    if HasItem(Player, 3583) then
    RemoveItem(Player, 3583)
    end
	UpdateQuestDescription(Quest, "Seven rats were exterminated; the threat to Freeport's citizens has been averted!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


