--[[
	Script Name		:	Quests/ButcherblockMountains/NauticalDisaster.lua
	Script Purpose	:	Handles the quest, "Nautical Disaster"
	Script Author	:	jakejp
	Script Date		:	6/2/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Dockmaster Waulon
	Preceded by		:	None
	Followed by		:	None
--]]

local NauticalDisaster = 252

function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "I need to find the stolen tome.", 1, 100, "I need to look for the lost tome somewhere on the aqua goblin islands.", 11, 1081016)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the tome.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found the tome.")

	AddQuestStepChat(Quest, 2, "I need to return the tome to Dockmaster Waulon.", 1, "I need to bring the tome back to Dockmaster Waulon.", 11, 1080008)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have returned the tome to Dockmaster Waulon.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned the tome to Dockmaster Waulon. Alas, it was missing several pages!")

	AddQuestStepKill(Quest, 3, "I need to look for the missing pages on the bodies of several aqua goblin wizards.", 5, 100, "I need to look for the missing pages on the bodies of the aqua goblin wizards.", 185, 1080057, 1080166)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I found all the missing pages!")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have recovered all the pages off the aqua goblin wizards.")

	AddQuestStepChat(Quest, 4, "I need to return the recovered pages to Dockmaster Waulon.", 1, "I need to return the recovered pages to Dockmaster Waulon.", 11, 1080008)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have returned the recovered pages to Dockmaster Waulon.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've returned the pages to Dockmaster Waulon.")

	UpdateQuestDescription(Quest, "After finding the tome and recovering the missing pages from the clutches of several aqua goblin wizards, I returned the completed book to Dockmaster Waulon. As per our agreement, I was paid handsomely for my efforts.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end