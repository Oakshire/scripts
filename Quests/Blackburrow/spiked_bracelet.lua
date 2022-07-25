--[[
    Script Name    : Quests/Blackburrow/spiked_bracelet.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.24 03:07:49
    Script Purpose : 

        Zone       : Blackburrow
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I should kill the burly Sabertooths to see if they have any kind of buckle on them.", 1, 25, "With a little effort, I believe I can transform this spiked strip of leather into something better.", 758, 170017)
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
	UpdateQuestStepDescription(Quest, 1, "I've found a buckle.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've been able to change the broken tipped javelin into a Spiked Bracelet.")
    if HasItem(Player, 2843) then
    RemoveItem(Player, 2843) 
    end
	UpdateQuestDescription(Quest, "Applying a little bit of effort, I've been able to change the spiked strip of leather into a Spiked Bracelet. <br> <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
