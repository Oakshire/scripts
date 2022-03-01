--[[
	Script Name		:	snapper_shells.lua
	Script Purpose	:	Handles the quest, "Snapper Shells"
	Script Author	:	Dorbin
	Script Date		:	2/23/2022
	Script Notes	:	

	Zone			:	Forest Ruins
	Quest Giver		:	Therven Senshun
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need six leathershell snapper shells.", 6, 100, "Therven would like shells from the turtles in the Forest Ruins.", 158, 1960012)
	AddQuestStepKill(Quest, 2, "I need six stoneshell snapper shells.", 6, 100, "Therven would like shells from the turtles in the Forest Ruins.", 170, 1960009)	
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")	
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

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected six leathershell snapper shells.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected six stoneshell snapper shells.")
	CheckProgress(Quest, QuestGiver, Player)
end

function 	CheckProgress(Quest, QuestGiver, Player)
  if QuestStepIsComplete(Player, 5487, 1) and QuestStepIsComplete(Player, 5487, 2)  then   
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the shells Therven wanted.")
	AddQuestStepChat(Quest, 3, "I must speak with Therven.", 1, "I need to bring these turtle shells back to Therven.", 158, 1960010)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
    end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Therven.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given Therven his shells.")

	UpdateQuestDescription(Quest, "I gave Therven the turtle shells he asked for. He was very thankful.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
