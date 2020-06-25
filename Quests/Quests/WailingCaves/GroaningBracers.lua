--[[
	Script Name		:	groaning_bracers.lua
	Script Purpose	:	Handles the quest, "Groaning Bracers"
	Script Author	:	Neatz09
	Script Date		:	8/30/2019
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Wailing Caves
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to bring these bracers to the Burial Pit in the Wailing Caves.", 1, "With a little effort, I believe I can transform these mysterious bracers into something better.", 11, -175, -55, -13)
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
	UpdateQuestStepDescription(Quest, 1, "A wisp of light streaked across the cavern and darted straight for the bracers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've been able to change the mysterious bracers into the Groaning Bracers.")

	UpdateQuestDescription(Quest, "Applying a little bit of effort, I've been able to change the mysterious bracers into the Groaning Bracers. <br> <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
