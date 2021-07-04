--[[
	Script Name		:	Quests/TheSerpentSewer/murkwater_coffee.lua
	Script Purpose	:	Handles the quest, "Murkwater Coffee"
	Script Author	:	premierio015
	Script Date		:	04.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Serpent Sewer
	Quest Giver		:	Pungent Gounds(Item)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Get a hold of some more of the Murkwater coffee grounds.", 5, 100, "Try and find more of the coffee ground that I have found on other Murkwaters.", 181, 1550010, 1550047, 1550004, 1550041, 1550008, 1550009, 1550045, 1550046, 1550011, 1550048, 1550008, 1550009, 1550045, 1550046)
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
	UpdateQuestStepDescription(Quest, 1, "I've found more of the Murkwater coffee grounds.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found enough of the Murkwater coffee grounds, for a while anyway.")
    if HasItem(Player, 11140) then
    RemoveItem(Player, 11140)
    end
	UpdateQuestDescription(Quest, "I've found enough of the grounds to satisfy my thirst for the bold viscous brew for a short while.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

