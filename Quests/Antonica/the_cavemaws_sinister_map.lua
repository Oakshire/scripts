--[[
    Script Name    : Quests/Antonica/the_cavemaws_sinister_map.lua
    Script Author  : Premierio015
    Script Date    : 2022.08.11 06:08:20
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay the Cavemaw tunnelers in the Antonican caves.", 5, 100, "The cavemaw gnolls are up to no good, planning to dig their way all the way to Qeynos for a staged attack.  I cannot stop them all, but I can certainly slow them down.", 104, 120290)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain the Cavemaw tunnelers, I am sure my efforts helped to some degree.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain a large amount of Cavemaw tunnelers.")

	UpdateQuestDescription(Quest, "I have slain a large amount of the seemingly limitless supply of Cavemaw tunnelers.  I hope my efforts slowed them down a bit.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


