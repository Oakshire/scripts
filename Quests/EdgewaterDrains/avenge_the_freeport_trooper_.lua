--[[
	Script Name		:	avenge_the_freeport_trooper.lua
	Script Purpose	:	Handles the quest, "Avenge the Freeport Trooper"
	Script Author	:	QuestParser (Replace this)
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
	AddQuestStepKill(Quest, 1, "I need to slay six Murkwater henchmen!", 6, 100, "I need to slay six Murkwater henchmen!", 559, 1560004, 1560012)
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
	UpdateQuestStepDescription(Quest, 1, "I killed six Murkwater henchmen.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I killed six Murkwater henchmen.")
    if HasItem(Player, 3021) then
    RemoveItem(Player, 3021)
    end
	UpdateQuestDescription(Quest, "Six Murkwater henchmen were slain.  They have paid the price for their murderous ways!  <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
