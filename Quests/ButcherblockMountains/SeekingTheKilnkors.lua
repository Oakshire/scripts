--[[
	Script Name		:	Quests/ButcherblockMountains/SeekingTheKilnkors.lua
	Script Purpose	:	Handles the quest, "Seeking the Kilnkors"
	Script Author	:	jakejp
	Script Date		:	6/6/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must find Jonedorn Kilnkor.", 1, "I must find Jonedorn Kilnkor in the eastermost dwarven outpost.", 11, 1080149)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have found Jonedorn Kilnkor.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found Jonedorn Kilnkor in the easternmost dwarven outpost.")

	UpdateQuestDescription(Quest, "I have discovered the West Fort Irontoe and found Jonedorn Kilnkor. I have also given him the note from the Muckflick runner.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end