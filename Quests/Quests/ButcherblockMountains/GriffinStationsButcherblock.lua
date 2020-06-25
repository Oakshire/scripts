--[[
	Script Name		:	Quests/ButcherblockMountains/GriffinStationsButcherblock.lua
	Script Purpose	:	Handles the quest, "Griffin Stations: Butcherblock"
	Script Author	:	jakejp
	Script Date		:	6/1/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	a griffin tamer
	Preceded by		:	None
	Followed by		:	None
--]]

local GriffinStationsButcherblock = 269

function Init(Quest)
	AddQuestStepLocation(Quest, 1, "There is a griffin tower station near the Butcherblock docks.", 10, "I must find the location of the three griffin towers in the Butcherblock Mountains.", 11, 754.67, 26.00, 571.20)
	AddQuestStepLocation(Quest, 2, "There is a griffin tower station near the entrance to Greater Faydark.", 10, "I must find the location of the three griffin towers in the Butcherblock Mountains.", 11, -966, 116, -430)
	AddQuestStepLocation(Quest, 3, "There is a griffin tower station near the entrance to Lesser Faydark.", 10, "I must find the location of the three griffin towers in the Butcherblock Mountains.", 11, -622.63, 115.50, 336.26)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, GriffinStationsButcherblock, 1) and QuestStepIsComplete(Player, GriffinStationsButcherblock, 2) and QuestStepIsComplete(Player, GriffinStationsButcherblock, 3) then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found the Docks station.")
	CheckProgress(Quest, QuestGiver, Player)
	
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found the Greater Faydark station.")
	CheckProgress(Quest, QuestGiver, Player)
	
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have found the Lesser Faydark station.")
	CheckProgress(Quest, QuestGiver, Player)
	
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around

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