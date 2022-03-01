--[[
	Script Name		:	Quests/EdgewaterDrains/the_mucus_feeding_machine.lua
	Script Purpose	:	Handles the quest, "The Mucus Feeding Machine"
	Script Author	:	premierio015
	Script Date		:	05.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Edgewater Drains
	Quest Giver		:	widget_small_machine
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay ten drudge mucus in Edgewater Drains.", 10, 100, "Someone has been feeding the drudge mucus in Edgewater Drains for some odd reason.  Whether or not they are someone's pet project, I am going to exterminate them.", 158, 1560002)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain the drudge mucus in Edgewater Drains.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain many of the drudge mucus.  I'm surprised that the salt water doesn't affect them at all.")

	UpdateQuestDescription(Quest, "I have slain many of the drudge mucus.  I'm surprised that the salt water doesn't affect them at all.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
