--[[
	Script Name		:	CarePackageforBlarton.lua
	Script Purpose	:	Handles the quest, "Care Package for Blarton"
	Script Author	:	geordie0511
	Script Date		:	14.03.2019
	Script Notes	:	

	Zone			:	Antonica
	Quest Giver		:	
	Preceded by		:	Killing with Kindness, One Barbarian at a Time
	Followed by		:	Spicy Meat Pie
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must find Blarton Blumble.", 1, "Matsy asked me to take these cookies to Blarton. He resides in Windstalker Village.", 2556, 120163)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have delivered the cookies to Blarton Blumble.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I took Blarton the cookies from Matsy.")

	AddQuestStepChat(Quest, 2, "I should return to Matsy.", 1, "I need to go back and let Matsy know that her cousin enjoyed the cookies.", 2556, 120280)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "Matsy gave me cookies for my trouble. Yum!")
	UpdateQuestTaskGroupDescription(Quest, 2, "I told Matsy that Blarton got his cookies.")

	UpdateQuestDescription(Quest, "The cookies seemed to make Blarton a much happier halfling.")
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
