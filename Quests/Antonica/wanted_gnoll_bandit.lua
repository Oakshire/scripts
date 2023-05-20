--[[
    Script Name    : Quests/Antonica/wanted_gnoll_bandit.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.16 04:05:32
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I must find the gnoll raiders and stop their marauding.", 12, 100, "Gnolls have been terrorizing the travelers in Antonica for years.  One group in particular has a price on their heads.", 1220, 120363,120437,120310	,120361,120251,120015,120355,120362,121833,120203,	120212,120441,120252)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
if HasItem(Player,3213)then
    DisplayText(Spawn, 34, "You roll up the wanted poster and stuff it in your quest satchle.")
    RemoveItem(Player,3213,1)
end
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have found the gnoll raiders and put a stop to the problem.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found the darkpaw gnoll raiders.  They will no longer terrorize travelers in Antonica.")

	UpdateQuestDescription(Quest, "You have slain the Gnoll bandit.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
