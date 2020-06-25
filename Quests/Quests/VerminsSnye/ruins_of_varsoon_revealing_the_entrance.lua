--[[
	Script Name		:	ruins_of_varsoon_revealing_the_entrance.lua
	Script Purpose	        :	Handles the quest, "Ruins of Varsoon: Revealing the Entrance"
	Script Author	        :	premierio015
	Script Date		:	17.05.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	Vermin's Snye
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to find the hidden entrance to Varsoon's lair.", 10, "I must find the location of the hidden entrance to Varsoon's new lair in the Thundering Steppes.", 11, -493, 0, 1032)
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
	UpdateQuestStepDescription(Quest, 1, "I've found the hidden entrance to Varsoon's lair.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found the location of the hidden entrance to Varsoon's new lair in the Thundering Steppes.")

	AddQuestStepChat(Quest, 2, "I need to speak with Zaen again.", 1, "I must return to Zaen Kalystir in the catacombs to inform him of the lair's location.", 11, 2000015)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken to Zaen again.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned with the location and informed Zaen of it.")

	AddQuestStepKill(Quest, 3, "I need to retrieve the key to the Keep of Immortality.", 1, 100, "I must find the key to Varsoon's lair on the skeletal druid in the Crypt of Betrayal.", 2171, 2010046) -- An Archaic Fury 
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've retrieved the key from the undead druid.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've found the key to Varsoon's hidden lair in the Crypt of Betrayal.")

	AddQuestStepChat(Quest, 4, "I need to speak with Zaen once more.", 1, "I must return to Zaen with the key from the druid.", 11, 2000015)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I've spoken with Zaen once again.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've returned with the key to Zaen Kalystir.")

	UpdateQuestDescription(Quest, "Zaen has discharged me to go investigate Varsoon's lair and interrupt the lich's plans.  I'm not certain how well this fits with the babbling of the undead I heard in Varsoon's old tomb. I am curious as to whether Zaen may possess an ulterior motive.  I will just have to explore the former Keep of Immortality in depth and discern the truth for myself. <br>")
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


