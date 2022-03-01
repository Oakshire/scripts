--[[
	Script Name		:	Quests/EdgewaterDrains/employee_hazards.lua
	Script Purpose	:	Handles the quest, "Employee Hazards"
	Script Author	:	premierio015
	Script Date		:	06.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Edgewater Drains
	Quest Giver		:	hazards report(Item)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Slay ten foul grapplers.", 10, 100, "This note was apparently meant for someone else here in these sewers.", 611, 1560020)
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
	UpdateQuestStepDescription(Quest, 1, "I've slain ten foul grapplers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've carried out the tasks stated in the note.")
    if HasItem(Player, 8062) then
    RemoveItem(Player, 8062)
    end
	UpdateQuestDescription(Quest, "Interesting... I guess it was worth it for the experience.  I suppose it couldn't hurt to take on adventures such as these.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


