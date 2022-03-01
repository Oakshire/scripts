--[[
	Script Name		:	Quests/TheSerpentSewer/marked_murkwater_cards.lua
	Script Purpose	:	Handles the quest, "Marked Murkwater Cards"
	Script Author	:	premierio015
	Script Date		:	04.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Serpent Sewer
	Quest Giver		:	Marked Cards (Item)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Rough up some Murkwaters to find the rest of the marked cards.", 1, 50, "If I'm going to find the rest of the marked cards I'm going to find them on the Murkwaters.", 2299, 1550010, 1550047, 1550004, 1550041, 1550008, 1550009, 1550045, 1550046, 1550011, 1550048, 1550008, 1550009, 1550045, 1550046)
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
	UpdateQuestStepDescription(Quest, 1, "I've found the rest of the marked deck of cards.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found the rest of the cards that were marked.")
     if HasItem(Player,  9363) then
     RemoveItem(Player, 9363)
     end
	UpdateQuestDescription(Quest, "I've recovered the rest of the marked cards off one of the Murkwaters, but I better not use these cards if I value my life.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

