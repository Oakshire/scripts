--[[
    Script Name    : Quests/TheCryptofBetrayal/gift_of_the_restless_corpses.lua
    Script Author  : Premierio015
    Script Date    : 2021.11.01 08:11:40
    Script Purpose : 

        Zone       : TheCryptofBetrayal
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay twenty restless corpses in the Crypt of Betrayal.", 20, 100, "I read that I will be rewarded for killing the contorted forms in the Crypt of Betrayal.  I shall slay them and see if it is true.", 611, 2010028)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain the restless corpses.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain quite a few of the contorted forms, and definitely feel like I've learned from the experience.")

	UpdateQuestDescription(Quest, "I have slain quite a few of the contorted forms, and definitely feel like I've learned from the experience.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


