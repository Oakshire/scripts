--[[
	Script Name		:	meet_the_inquisitor.lua
	Script Purpose	:	Handles the quest, "Meet the Inquisitor"
	Script Author	:	torsten
	Script Date		:	18.07.2022
	Script Notes	:	

	Zone			:	Beggar's Court
	Quest Giver		:	Durio Dexus
	Preceded by		:	Tricking the Traitor
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to locate Inquisitor Thorson. I should use the bell to summon transport to the Sunken City.", 1, "I need to head to the Sunken City to meet Inquisitor Thorson.", 11, 1240024)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've met Inquisitor Thorson.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've met Inquisitor Thorson.")

	UpdateQuestDescription(Quest, "I've spoken with Inquisitor Thorson in the Sunken City. I should be able to learn much more from him.")
	GiveQuestReward(Quest, Player)
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

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
