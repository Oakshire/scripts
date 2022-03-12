--[[
	Script Name		:	new_fishing_spot_for_ubani.lua
	Script Purpose	:	Handles the quest, "New Fishing Spot for Ubani"
	Script Author	:	Dorbin
	Script Date		:	3/11/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Graystone Yard
	Quest Giver		:	Ubani
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to check Qeynos' harbor for fish.", 8, "I need to go to the pier in Qeynos' harbor and see if the fishing will be good.", 11,981.28, -25.56, 83.62, 221)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	UpdateQuestZone(Quest, "Qeynos Harbor")
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
	UpdateQuestStepDescription (Quest, 1, "I've checked the harbor for fish.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've checked the harbor for Ubani, and there are a great number of fish.")
	UpdateQuestZone(Quest, "Graystone Yard")
	
	AddQuestStepChat(Quest, 2, "I need to return to Ubani in Graystone.", 1, "I need let Ubani know there are several fishing spots along the Qeynos Harbor pier.", 11, 2350028)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've returned to Ubani.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've informed Ubani about Qeynos Harbor's many fishing spots.")

	UpdateQuestDescription(Quest, "I brought Ubani some great news, the harbor waters around the pier are loaded with fish! Schools and schools of them flourish in the waters there. I'm sure Ubani will have better luck if he doesn't get escorted from the city before he catches some.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)		
	end
end
