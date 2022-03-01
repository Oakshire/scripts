--[[
	Script Name		:	TheGnollishMenace.lua
	Script Purpose	:	Handles the quest, "The Gnollish Menace"
	Script Author	:	Shatou
	Script Date		:	1/5/2020
	Script Notes	:	

	Zone			:	Caves
	Quest Giver		:	Lieutenant Delson
	Preceded by		:	None
	Followed by		:	None
--]]

local A_MUDPAW_LOOKOUT = 1970016
local A_DUSTPAW_GUARD = 1970017
local A_DUSTPAW_LOOKOUT = 1970018
local A_DUSTPAW_ARMORER = 1970019
local A_ROCKPAW_SCOUT = 1970020
local A_ROCKPAW_GUARD = 1970021
local A_DUSTPAW_ARMORER_2 = 1970027
local A_MUDPAW_GUARD = 1970028
local A_ROCKPAW_STRIKER = 1970029
local A_ROCKPAW_STONEMASTER = 1970034
local AN_ALABASTER_BEHEMOTH = 1970013
local LIEUTENANT_DELSUN_ID = 1970005

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill thirty gnolls within the Caves.", 30, 100, "Lieutenant Delsun has tasked me with taking out a large portion of the gnolls and their allies here in the Caves.", 2707, A_MUDPAW_LOOKOUT, A_DUSTPAW_GUARD, A_DUSTPAW_LOOKOUT, A_DUSTPAW_ARMORER, A_ROCKPAW_SCOUT, A_ROCKPAW_GUARD, A_DUSTPAW_ARMORER_2, A_MUDPAW_GUARD, A_ROCKPAW_STRIKER, A_ROCKPAW_STONEMASTER)
	
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed thirty gnolls.")
	
	AddQuestStepKill(Quest, 2, "I need to kill two Dustpaw armorers.", 2, 100, "Lieutenant Delsun has tasked me with taking out a large portion of the gnolls and their allies here in the Caves.", 2707, A_DUSTPAW_ARMORER, A_DUSTPAW_ARMORER_2)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have killed two Dustpaw armorers.")

	AddQuestStepKill(Quest, 3, "I need to kill five alabaster behemoths.", 5, 100, "Lieutenant Delsun has tasked me with taking out a large portion of the gnolls and their allies here in the Caves.", 2707, AN_ALABASTER_BEHEMOTH)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed five alabaster behemoths.")

	AddQuestStepKill(Quest, 4, "I need to kill five Rockpaw guards.", 5, 100, "Lieutenant Delsun has tasked me with taking out a large portion of the gnolls and their allies here in the Caves.", 2707, A_ROCKPAW_GUARD)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have killed five Rockpaw guards.")
	
	AddQuestStepChat(Quest, 5, "I need to return to Lieutenant Delsun.", 1, "Lieutenant Delsun has tasked me with taking out a large portion of the gnolls and their allies here in the Caves.", 11, LIEUTENANT_DELSUN_ID)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I have spoken with Lieutenant Delsun.")

	UpdateQuestDescription(Quest, "I have done what Lieutenant Delsun asked of me.")
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
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end