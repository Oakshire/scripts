--[[
	Script Name		:	InformationAcquisition.lua
	Script Purpose	:	Handles the quest, "Information Acquisition"
	Script Author	:	Shatou
	Script Date		:	1/9/2020
	Script Notes	:	**Need logs for three NPCs and information for their looks**

	Zone			:	Peat Bog
	Quest Giver		:	Rujiarmo Oolamein
	Preceded by		:	Delivering News
	Followed by		:	Reclaiming the Bog
--]]

local RUJIARMO_OOLAMEIN_ID = 1980024
local LIEUTENANT_DAWSON_ID = 1980012


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Rujiarmo's contact. I can find them in the northwestern end of the area between the paths to Nettleville and Starcrest Commune.", 1, "Rujiarmo has asked that I speak with a courier on his behalf.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

--Make "a dark figure" NPC at 703,-32,395

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Rujiarmo's contact.")

	AddQuestStepChat(Quest, 2, "I need to speak with Liberalist Pale. I can find him in the hollowed log partially submerged in the water south of the area between Nettleville and Starcrest Commune.", 1, "Rujiarmo has asked that I speak with a courier on his behalf.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

--Make "Liberalist Pale" NPC at 649,-32,472

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Liberalist Pale.")

	AddQuestStepChat(Quest, 3, "I need to speak with Veh'ra the Conserving. I can find her just southwest of the log beside the path just outside of the gate to Nettleville.", 1, "Rujiarmo has asked that I speak with a courier on his behalf.", 11)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

--Make "Veh'ra the Conserving" NPC at 622, -33, 465

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Veh'ra the Conserving.")

	AddQuestStepChat(Quest, 4, "I need to bring this information to Rujiarmo.", 1, "Rujiarmo has asked that I speak with a courier on his behalf.", 1223, RUJIARMO_OOLAMEIN_ID)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Rujiarmo.")

	AddQuestStepChat(Quest, 5, "I need to bring this information to Lieutenant Dawson near the gates to Nettleville.", 1, "Rujiarmo has asked that I speak with a courier on his behalf.", 75, LIEUTENANT_DAWSON_ID)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I have spoken with Lieutenant Dawson.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gotten the information from the courier and brought it to Lieutenant Dawson.")

	UpdateQuestDescription(Quest, "I have spoken with Rujiarmo's contacts. Rujiarmo believes the information will best be handled by the Qeynos guard and so I have delivered it to Lieutenant Dawson.")
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