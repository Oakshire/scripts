--[[
	Script Name		:	ruins_of_varsoon_investigation_of_the_mausoleum.lua
	Script Purpose	:	Handles the quest, "Ruins of Varsoon: Investigation of the Mausoleum"
	Script Author	:	premierio015
	Script Date		:	17.05.2020
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Vermin's Snye
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to investigate Varsoon's old tomb.", 1, "I must go to the tomb that once held the lich Varsoon just north of Qeynos.", 11, 362, -19, -662)
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
	UpdateQuestStepDescription(Quest, 1, "I've investigated Varsoon's old tomb.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've listened to the wailings of the dead in Varsoon's old tomb and have information to relay.")

	AddQuestStepChat(Quest, 2, "I need to speak with Zaen Kalystir.", 1, "I must return to the Vermin's Snye beneath the streets of Qeynos to speak with Zaen.", 11, 2000015)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Zaen Kalystir.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've relayed the information I have from the tomb to Zaen Kalystir.")

	UpdateQuestDescription(Quest, "I managed to return safely to Zaen Kalystir, despite being accosted by the undead inside the tomb.  The dead spoke of Varsoon, but strangely, they mentioned he might be trapped again. This does bear further investigation.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

