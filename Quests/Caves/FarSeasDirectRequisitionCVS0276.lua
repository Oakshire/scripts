--[[
	Script Name		:	FarSeasDirectRequisitionCVS0276.lua
	Script Purpose	:	Handles the quest, "Far Seas Direct Requisition CVS0276"
	Script Author	:	Shatou
	Script Date		:	1/6/2020
	Script Notes	:	

	Zone			:	Caves
	Quest Giver		:	Far Seas Direct Requisition CVS0276 (examine item)
	Preceded by		:	none
	Followed by		:	none
--]]

local WHITE_SPIDER_ID = 1970012
local WHITE_SPIDERLING_ID = 1970002
local ALBINO_ARACHNID = 1970010
local ALCHEMIST_GARION_DUNAM_ID = 2330027

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Gather white spiderling chitin.", 10, 100, "I must hunt down the creatures in the Caves to fill the requisition.", 11, WHITE_SPIDERLING_ID,8260002	)
	AddQuestStepKill(Quest, 2, "Gather white spider silk.", 6, 25, "I must hunt down the creatures in the Caves to fill the requisition.", 11, WHITE_SPIDER_ID, WHITE_SPIDERLING_ID, ALBINO_ARACHNID,8260019)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gathered enough white spiderling chitin.")
    QuestCheck(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have gathered enough white spider silk.")
    QuestCheck(Quest, QuestGiver, Player)
end

function QuestCheck(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player,502,1) == true and QuestStepIsComplete(Player,502,2) == true then
    UpdateQuestTaskGroupDescription(Quest, 1, "I have hunted down all the resources to fill the requisition.")
    UpdateQuestZone(Quest, "Nettleville")	
	AddQuestStepChat(Quest, 3, "I must talk to Garion Dunam.", 1, "I must go to Nettleville to seek out Alchemist Garion Dunam.", 11, ALCHEMIST_GARION_DUNAM_ID)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end
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
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end