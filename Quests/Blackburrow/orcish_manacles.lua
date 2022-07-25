--[[
    Script Name    : Quests/Blackburrow/orcish_manacles.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.24 02:07:43
    Script Purpose : 

        Zone       : Blackburrow
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I should search the chests in Blackburrow until I find a set of keys to unlock these handcuffs.", 1, 100, "With a little effort, I believe I can transform this handcuffs into something better.", 11)
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
	UpdateQuestStepDescription(Quest, 1, "I've a key that might work on the handcuffs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've been able to change the handcuffs into some Orcish Manacles.")
    if HasItem(Player, 9110) then -- locked handcuffs item
     RemoveItem(Player, 9110)
     end
	UpdateQuestDescription(Quest, "Applying a little bit of effort, I've been able to change the handcuffs into a Orcish Manacles. <br> <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

