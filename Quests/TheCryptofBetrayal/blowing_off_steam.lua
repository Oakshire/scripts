--[[
    Script Name    : Quests/TheCryptofBetrayal/blowing_off_steam.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.30 09:10:51
    Script Purpose : 

        Zone       : TheCryptofBetrayal
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Blow off some steam by killing stuff down here.", 10, 100, "Blow off a little steam by killing stuff in the Crypt of Betrayal.", 611, 2010033, 2010037, 2010036, 2010000, 2010034, 2010038, 2010005, 2010004, 2010007, 2010008, 2010002, 2010013, 2010031, 2010003, 2010035, 2010026, 2010011, 2010015, 2010016, 2010028, 2010024, 2010021, 2010022, 2010023, 2010014, 2010018, 2010019, 2010012, 2010046, 2010027, 2010010, 2010039, 2010029, 2010006, 2010040, 2010041, 2010017)
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
	UpdateQuestStepDescription(Quest, 1, "I'm feeling a little bit better.")
	UpdateQuestTaskGroupDescription(Quest, 1, "You feel much better after blowing off a little steam.")
	UpdateQuestDescription(Quest, "You feel much better after blowing off a little steam.")
	GiveQuestReward(Quest, Player)
	if HasItem(Player, 7295) then -- Fishing Hook (Item) 
	RemoveItem(Player, 7295)
	end
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


