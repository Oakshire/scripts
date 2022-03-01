--[[
	Script Name		:	a_dangerous_lesson.lua
	Script Purpose	:	Handles the quest, "A Dangerous Lesson"
	Script Author	:	premierio015
	Script Date		:	05.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Edgewater Drains
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay bile toad foragers in the Edgewater Drains.", 10, 100, "I need to practice my fighting skills on the bile toad foragers in the Edgewater Drains.", 612, 1560000)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain the bile toad foragers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the toads and feel like I've learned from the experience.")

	UpdateQuestDescription(Quest, "I have slain quite a few bile toad foragers, and I definitely think I'm getting better at fighting from that.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

