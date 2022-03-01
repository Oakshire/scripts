--[[
    Script Name    : Quests/FallenGate/the_broken_halfling_skull.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.11 10:07:44
    Script Purpose : 

        Zone       : FallenGate
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]




function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "I should destroy tormented dragoons to avenge the dead halfling.", 5, 100, "The visions point toward the tormented dragoons.  They should be put to a final rest.", 498, 1190050)
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
	UpdateQuestStepDescription(Quest, 1, "I have destroyed enough tormented dragoons to put the halfling spirit to rest.")
	UpdateQuestTaskGroupDescription(Quest, 1, "The visions of revenge have faded.")
    if HasItem(Player,  5577) then
    RemoveItem(Player, 5577, 1)
	UpdateQuestDescription(Quest, "The visions have left and the halfling spirit seems to be at peace.  For my part, I found a good bit of coin on the last of those tormented dragoons to make this worth my time and effort!")
	GiveQuestReward(Quest, Player)
end
   end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
