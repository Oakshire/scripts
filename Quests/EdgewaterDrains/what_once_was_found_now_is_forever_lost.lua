--[[
	Script Name		:	Quests/EdgewaterDrains/what_once_was_found_now_is_forever_lost.lua
	Script Purpose	:	Handles the quest, "What Once Was Found, Now is Forever Lost"
	Script Author	:	premierio015
	Script Date		:	05.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Edgewater Drains
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Indiscriminately seek your revenge upon the inhabitance of the Edgewater Drains.", 30, 100, "You're seeking vengeance with the unknown.  Kill any creature in the Edgewater Drains.", 611, 1560016, 1560010, 1560000, 1560023, 1560008, 1560007, 1560003, 1560018, 1560002, 1560006, 1560032, 1560020, 1560011, 1560025, 1560079, 1560091, 1560009, 1560022, 1560033, 1560029, 1560012, 1560004, 1560027, 1560013, 1560005, 1560061, 1560092, 1560034, 1560001, 1560019, 1560089, 1560035, 1560036, 1560015, 1560024, 1560028, 1560026, 1560017, 1560031, 1560030, 1560037)
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
	UpdateQuestStepDescription(Quest, 1, "I've slain another possible culprit.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I'm sure by now the thing that bumped into me is dead.")
    if HasItem(Player, 10342) then
    RemoveItem(Player, 10342)
    end
	UpdateQuestDescription(Quest, "I've slaughtered enough living creatures down here. I'm pretty sure that what ever it was that bumped into me is now dead.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
