--[[
	Script Name		:	Quests/EdgewaterDrains/a_sandwich_affair.lua
	Script Purpose	:	Handles the quest, "A Sandwich Affair"
	Script Author	:	premierio015
	Script Date		:	05.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Edgewater Drains
	Quest Giver		:	Half a Murkwater Sandwich(Item)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Find the Murkwaters that have those yummy sandwiches.", 5, 50, "Shake down those Murkwaters here in the Edgewater Drains.  I've just got to get some more of those sandwiches.", 2539, 1560004, 1560012, 1560013, 1560029, 1560027)
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
	UpdateQuestStepDescription(Quest, 1, "I've got another sandwich.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've ruffed up a few of the Murkwater and finally got the sandwiches I wanted.")
    if HasItem(Player, 8019) then
    RemoveItem(Player, 8019)
    end
	UpdateQuestDescription(Quest, "I've ruffed up quite a few of the Murkwaters and I got the sandwiches I wanted.  And that's all that really matters.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

