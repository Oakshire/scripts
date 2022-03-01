--[[
    Script Name    : Quests/TheCryptofBetrayal/homemade_beetle_juice.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.29 08:10:04
    Script Purpose : 

        Zone       : TheCryptofBetrayal
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I'll need to squash a lot of beetles to make enough juice.", 20, 100, "The beetle juice is made from the beetles down here in the Crypt of Betrayal.", 162, 2010002, 2010013, 2040001)
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
	UpdateQuestStepDescription(Quest, 1, "I've squashed another beetle.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've squashed enough beetles to make myself some beetle juice.")
	UpdateQuestDescription(Quest, "It took many beetles, but I've got plenty of beetle juice to last me, for a while anyway.")
	GiveQuestReward(Quest, Player)
	if HasItem(Player, 4203) then -- Beetle Juice(Item)
	RemoveItem(Player, 4203)
	end
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

