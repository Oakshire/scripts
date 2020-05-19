--[[
	Script Name		:	NewsforGermain.lua
	Script Purpose	:	Handles the quest, "News for Germain"
	Script Author	:	Shatou
	Script Date		:	1/10/2020
	Script Notes	:	

	Zone			:	Forest Ruins
	Quest Giver		:	Acting Lieutenant Germain
	Preceded by		:	None
	Followed by		:	Favors
--]]

local LIEUTENAT_GERMAIN_ID = 1960005
local DEL_VARUN_PACK_ID = 6375
local COLLECT_LEAF_SAMPLE_SPELL_ID = 1323

function Init(Quest)
	AddQuestStepHarvest(Quest, 1, "I need to check west of the ruins for any sign of Del Varun. He was supposed to be near the pond on the western end of the ruins.", 1, 100, "Lieutenant Germain has asked that I search for Del Varun, a scout assigned to the Forest Ruins.", 11, DEL_VARUN_PACK_ID)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found Del Varun's pack.")

	AddQuestStep(Quest, 2, "I should see what I can find in Del Varun's pack.", 1, 100, "Lieutenant Germain has asked that I search for Del Varun, a scout assigned to the Forest Ruins.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have read Del Varun's log.")

	AddQuestStepSpell(Quest, 3, "I should investigate the strange plants north of the pond that Del Varun spoke of.", 1, 100, "Lieutenant Germain has asked that I search for Del Varun, a scout assigned to the Forest Ruins.", 11, COLLECT_LEAF_SAMPLE_SPELL_ID)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I witnessed the strange plants that Del Varun spoke of. I collected a leaf sample from one of them.")

	AddQuestStepChat(Quest, 4, "I should take this plant sample back to Lieutenant Germain.", 1, "Lieutenant Germain has asked that I search for Del Varun, a scout assigned to the Forest Ruins.", 2098, LIEUTENAT_GERMAIN_ID)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have given Germain the plant sample.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Del Varun's satchel and log. The log led me to a strange phenomenon north of the pond on the western side of the ruins.")

	UpdateQuestDescription(Quest, "I found Del Varun's satchel. In it there was a log that detailed a strange area north of the pond near where Del Varun was. At this location there were some plants shrouded by a strange, colorful aura.")
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