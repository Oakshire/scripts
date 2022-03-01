--[[
	Script Name		:	Quests/VerminsSnye/ServingThePrimeHealer.lua
	Script Purpose	        :	Handles the quest, "Serving the Prime Healer"
	Script Author	        :	premierio015
	Script Date		:	17.05.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	Vermin's Snye
	Quest Giver		:	Brother Garvis
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect twenty grave scorpius' venom sacs.", 20, 100, "I need to collect venom sacs from some of the grave scorpius and giant burrowers here in the Vermin's Snye for Brother Garvis.", 1151, 2000003)
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
	UpdateQuestStepDescription(Quest, 1, "I have all the grave scorpius' venom sacs I need.")

	AddQuestStepKill(Quest, 2, "I need to collect ten giant burrower venom sacs.", 10, 100, "I need to collect venom sacs from some of the grave scorpius and giant burrowers here in the Vermin's Snye for Brother Garvis.", 201, 2000004)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have all the giant burrower venom sacs I need.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the venom sacs.")

	AddQuestStepChat(Quest, 3, "I need to return to Brother Garvis.", 1, "I need to take these venom sacs back to Brother Garvis in the Vermin's Snye.", 11, 2000002)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I returned to Brother Garvis.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave the venom sacs to Brother Garvis.")

	UpdateQuestDescription(Quest, "It was a long and hard job but I was able to do the work Brother Garvis asked me to perform.  The venom sacs will go a long way in creating serums to heal the poisoned and sick.")
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
