--[[
    Script Name    : Quests/TheCryptofBetrayal/strength_of_the_ire_minions.lua
    Script Author  : Premierio015
    Script Date    : 2021.11.01 08:11:36
    Script Purpose : 

        Zone       : TheCryptofBetrayal
        Quest Giver: widget_dead_statue
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay twenty ire minions in the Crypt of Betrayal.", 20, 100, "The ire minions in the Crypt of Betrayal are supposed to strengthen my knowledge of battle, should I engage them.  I shall try this out.", 91, 2010010, 2010027, 2010029, 2010039)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain the ire minions.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have destroyed the ire minions and feel that I have gained knowledge from the experience.")

	UpdateQuestDescription(Quest, "I have slain the ire minions and feel that I have learned quite a bit from fighting them.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


