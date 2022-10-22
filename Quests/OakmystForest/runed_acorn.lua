--[[
	Script Name		:	RunedAcorn.lua
	Script Purpose	:	Handles the quest, "Runed Acorn"
	Script Author	:	ememjr
	Script Date		:	5/9/2017
	Script Notes	:

	Zone			:	Oakmyst Forest
	Quest Giver		:
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill three corrupted dryads.", 3, 100, "Corrupted dryads often hide in dark, dank places such as water-filled caverns.", 611, 1950013, 1950070,8300004)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have killed three corrupted dryads.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the corrupted dryads in a secret cave by the waterfall in Oakmyst Forest.")

	UpdateQuestDescription(Quest, "I have killed three corrupted dryads and released their souls to be reborn in the renewal of spring.  I am still not sure, however, as to how they came to be corrupted.")
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