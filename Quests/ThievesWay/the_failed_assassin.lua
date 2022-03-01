--[[
	Script Name		:	the_failed_assassin.lua
	Script Purpose	:	Handles the quest, "The Failed Assassin"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	04.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Thieves' Way
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill Marius Darkblade.", 1, 100, "I must kill Lord Marius Darkblade and retrieve his head.", 611, 1540025)
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
	UpdateQuestStepDescription(Quest, 1, "I have killed Marius Darkblade.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed Marius Darkblade.")
    if HasItem(Player, 2804) then
    RemoveItem(Player, 2804)
    end
	UpdateQuestDescription(Quest, "I unwittingly killed an agent who was ordered by the Freeport Militia to assassinate Lord Darkblade.  I have taken it upon myself to kill Lord Marius Darkblade in the agent's stead.  Captain Molacus awarded me for the deed.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
