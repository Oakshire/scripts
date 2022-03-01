--[[
	Script Name		:	bloodsaber_brew.lua
	Script Purpose	        :	Handles the quest, "Bloodsaber Brew"
	Script Author	        :	premierio015
	Script Date		:	03.06.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	Vermin's Snye
	Quest Giver		:	Half Bottle of Bloodsaber Brew(8020)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Look for more bottles of Bloodsaber brew", 5, 100, "I had found the first sample of Bloodsaber brew from a Bloodsaber proficient that I had defeated. I'm sure other Bloodsabers will have some of this tasty brew.", 2209, 2000019)
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
	UpdateQuestStepDescription(Quest, 1, "")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found quite a few more bottles. This should be good for now.")

	UpdateQuestDescription(Quest, "I was able to find five more bottles of this brew. Not bad if I do say so myself.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
