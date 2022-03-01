--[[
    Script Name    : Quests/TheCryptofBetrayal/stolen_bones.lua
    Script Author  : Premierio015
    Script Date    : 2021.11.01 09:11:39
    Script Purpose : 

        Zone       : TheCryptofBetrayal
        Quest Giver: widget_decayed_skeleton
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay fifteen agonized essences in the Crypt of Betrayal.", 15, 100, "The agonzied essences in the Crypt of Betrayal and abomination that must be stopped.  I shall slay them and let the souls used to create them rest.", 92, 2010012, 2010014, 2010018, 2010019)
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
	UpdateQuestTaskGroupDescription(Quest, 1, "The agonzied essences in the Crypt of Betrayal and abomination that must be stopped.  I shall slay them and let the souls used to create them rest.")

	UpdateQuestDescription(Quest, "I have slain quite a few of the agonized essences.  I hope the souls of those who were used to create them rest peacefully.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

