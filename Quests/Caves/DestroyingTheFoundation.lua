--[[
	Script Name		:	DestroyingtheFoundation.lua
	Script Purpose	:	Handles the quest, "Destroying the Foundation"
	Script Author	:	Shatou
	Script Date		:	1/5/2020
	Script Notes	:	

	Zone			:	Caves
	Quest Giver		:	Emma Torque
	Preceded by		:	An Explosive Idea
	Followed by		:	None
--]]

local FULKOIR_HAGGLETON_ID = 1970043

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to destroy the digging machine DDBD-2830-A.", 1, 100, "Emma Torque needs me to destroy the two machines being used by the gnolls to dig through the caves and to kill the Freeportian gnome responsible for bringing them here.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have placed explosives on the digging machine DDBD-2830-A.")

	AddQuestStep(Quest, 2, "I need to destroy the digging machine DDBD-2830-B.", 1, 100, "Emma Torque needs me to destroy the two machines being used by the gnolls to dig through the caves and to kill the Freeportian gnome responsible for bringing them here.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have placed explosives on the digging machine DDBD-2830-B.")

	SpawnMob(GetZone(Player), FULKOIR_HAGGLETON_ID, true, 44.11, 37.72, -108.44, 221.25)
	
	AddQuestStepKill(Quest, 3, "I need to kill Fulkoir Haggleton. He will probably appear among the Rockpaw gnolls once I've destroyed his machines.", 1, 100, "Emma Torque needs me to destroy the two machines being used by the gnolls to dig through the caves and to kill the Freeportian gnome responsible for bringing them here.", 2466, FULKOIR_HAGGLETON_ID)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed Fulkoir Haggleton.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have destroyed all of the machines and killed Fulkoir.")

	AddQuestStepChat(Quest, 4, "I need to return to Emma Torque.", 1, "Now that I have done what she needed I should return to Emma Torque.", 11)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Emma Torque.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Emma Torque.")

	UpdateQuestDescription(Quest, "I have destroyed the gnoll's digging machines and killed the gnome responsible for providing them with this technology.")
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