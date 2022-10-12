--[[
	Script Name		:	FarSeasDirectRequisitionCVS0431.lua
	Script Purpose	:	Handles the quest, "Far Seas Direct Requisition CVS0431
	Script Author	:	Shatou
	Script Date		:	1/6/2020
	Script Notes	:	

	Zone			:	Caves
	Quest Giver		:	Far Seas Direct Requisition CVS0431 (examine item)
	Preceded by		:	none
	Followed by		:	none
--]]

local A_CAVE_SERPENT_ID = 1970008
local ALCHEMIST_GARION_DUNAM_ID = 2330027

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Collect cave serpent dorsal fins.", 10, 100, "I must hunt down the creatures in the Caves to fill the requisition.", 11, A_CAVE_SERPENT_ID,8260074,8260003)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found a cave serpent dorsal fin.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have hunted down all the resources to fill the requisition.")
    UpdateQuestZone(Quest, "Nettleville")	

	AddQuestStepChat(Quest, 2, "I must talk to Garion Dunam.", 1, "I must go to Nettleville to seek out Alchemist Garion Dunam.", 11, ALCHEMIST_GARION_DUNAM_ID)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I spoke to Garion Dunam.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have delivered the goods to Alchemist Garion Dunam.")

	UpdateQuestDescription(Quest, "I filled the Far Seas Requisition and delivered the goods to the client in Nettleville. I have been paid in full for this work, but the order was late.")
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