--[[
    Script Name    : Quests/TheCryptofBetrayal/destroy_the_undead.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.29 09:10:30
    Script Purpose : 

        Zone       : TheCryptofBetrayal
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Eliminate the undead in the Crypt of Betrayal.", 30, 100, "I have an uncontrollable urge to destroy the undead here in the Crypt of Betrayal.", 611, 2010006, 2010029, 2010039, 2010010, 2010027, 2010046, 2010012, 2010019, 2010018, 2010014, 2010023, 2010022, 2010021, 2010024, 2010028, 2010031, 2010008, 2010007, 2010040, 2010041, 2010017)
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
	UpdateQuestStepDescription(Quest, 1, "I've destroyed another of the undead.")
	UpdateQuestTaskGroupDescription(Quest, 1, "The urge to eliminate the undead has left me.")
	UpdateQuestDescription(Quest, "After eliminating many of the undead in the Crypt of Betrayal the urge to destroy them left me.")
	GiveQuestReward(Quest, Player)
	if HasItem(Player, 13568) then -- Sullied Doll(Item)
	RemoveItem(Player, 13568)
	end
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


