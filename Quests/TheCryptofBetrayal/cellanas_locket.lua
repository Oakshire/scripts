--[[
    Script Name    : Quests/TheCryptofBetrayal/cellanas_locket.lua
    Script Author  : Premierio015
    Script Date    : 2021.11.01 07:11:36
    Script Purpose : 

        Zone       : TheCryptofBetrayal
        Quest Giver: widget_candle_holder(widget)
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to destroy fifteen agonized essences in the Crypt of Betrayal.", 15, 100, "I must avenge Cellana by destroying the agnozied essences in the Crypt of Betrayal.", 611, 2010012, 2010014, 2010018, 2010019)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain the agonized essences.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have destroyed the agonized essences, I hope Cellana's spirit is able to rest in peace now.")

	UpdateQuestDescription(Quest, "I have destroyed the agonized essences.  I hope Cellana's spirit is able to rest in peace now.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

