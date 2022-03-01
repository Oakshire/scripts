--[[
	Script Name		:	Quests/ButcherblockMountains/ThievingRunts.lua
	Script Purpose	:	Handles the quest, "Thieving Runts"
	Script Author	:	jakejp
	Script Date		:	6/4/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Guard Daarwyn
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Aqua goblin runt ears collected.", 8, 100, "I must collect aqua goblin runt ears for Guard Daarwyn.", 2566, 1080347, 1080051, 1080165, 1081088)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected enough aqua goblin runt ears.")

	AddQuestStepChat(Quest, 2, "I must return the ears to Guard Daarwyn.", 1, "I must collect aqua goblin runt ears for Guard Daarwyn.", 235, 1080004)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have collected the bounty.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have returned the ears, and collected the bounty.")

	UpdateQuestDescription(Quest, "I have cleared out several of the aqua goblin runts, and have presented the ears as proof of my deeds.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end