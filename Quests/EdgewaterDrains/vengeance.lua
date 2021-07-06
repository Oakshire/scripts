--[[
	Script Name		:	Quests/EdgewaterDrains/vengeance.lua
	Script Purpose	:	Handles the quest, "Vengeance"
	Script Author	:	premierio015
	Script Date		:	05.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Edgewater Drains
	Quest Giver		:	Severed Murkwater Head(Item)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Grant the request of vengeance.  Kill any Murkwater.", 10, 100, "Seek vengeance for a dead Murkwater toward other Murkwaters here in the Edgewater Drains.", 611, 1560004, 1560012, 1560013, 1560029, 1560027)
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
	UpdateQuestStepDescription(Quest, 1, "I've slain another Murkwater.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've killed many Murkwaters for the dead ratonga.  May he rest avenged.")
    if HasItem(Player, 12102) then
    RemoveItem(Player, 12102)
    end
	UpdateQuestDescription(Quest, "The last wish of vengeance towards the Murkwaters has been avenged.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
