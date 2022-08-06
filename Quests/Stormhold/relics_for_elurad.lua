--[[
	Script Name		:	Quests/Stormhold/relics_for_elurad.lua
	Script Purpose	:	Handles the quest, "Relics for Elurad"
	Script Author	:	Shatou
	Script Date		:	8/5/2022
	Script Notes	:	

	Zone			:	Stormhold
	Quest Giver		:	Archaeologist Elurad
	Preceded by		:	None
	Followed by		:	None
--]]

local ARCHAEOLOGIST_ELURAD_ID = 150001

function Init(Quest)
	AddQuestStep(Quest, 1, "Locate the Mace of Thunder in the Stormhold Armory.", 1, 100, "I need to find the three objects Elurad mentioned.", 634)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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
	UpdateQuestStepDescription(Quest, 1, "I've recovered the Mace of Thunder.")

	AddQuestStep(Quest, 2, "Locate the Vessel of Storms in the Chapel of Karana in Stormhold.", 1, 100, "I need to find the three objects Elurad mentioned.", 1017)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've recovered the Vessel of Storms.")

	AddQuestStep(Quest, 3, "Locate the Tome of Thunder in the Library of Karana in Stormhold.", 1, 100, "I need to find the three objects Elurad mentioned.", 716)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've recovered the Tome of Thunder.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found all three relics Elurad requires.")

	AddQuestStepChat(Quest, 4, "Speak with Elurad in Stormhold.", 1, "I need to speak with Elurad at the entrance of Stormhold.", 11, ARCHAEOLOGIST_ELURAD_ID)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I've spoken with Elurad in Stormhold.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with Elurad and given him the relics he wanted.")

	UpdateQuestDescription(Quest, "I managed to retrieve the mace, tome and chalice from the depths of Stormhold.  Elurad seemed very pleased with the results.")
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
