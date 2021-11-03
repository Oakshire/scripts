--[[
    Script Name    : Quests/TheCryptofBetrayal/the_hidden_wanted_poster.lua
    Script Author  : Premierio015
    Script Date    : 2021.11.02 05:11:31
    Script Purpose : 

        Zone       : TheCryptofBetrayal
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay fifteen Bloodsaber sentinels in the Crypt of Betrayal.", 15, 100, "Bloodsaber sentinels are running loose in the Crypt of Betrayal.  The city of Qeynos wants them destroyed, so I shall carry out this task.", 611, 2010004)
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
	UpdateQuestStepDescription(Quest, 1, "I have slalin the Bloodsaber sentinels")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain many of the Bloodsaber sentinels in the Crypt of Betrayal.")

	UpdateQuestDescription(Quest, "I have helped the city of Qeynos by bringing the Bloodsaber sentinels to justice.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
