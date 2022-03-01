--[[
	Script Name		: Quests/Freeport/TheyreHere.lua
	Script Purpose	:	Handles the quest, "They're Here..."
	Script Author	:	premierio015
	Script Date		:	22.08.2020
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	Sneel Valyin
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "Search for a sickened citizen in one of the taverns.", 1, 100, "I should follow Sneel's warning, and see if I can find any of these sickened citizens.  I'll search through the city and see what I can find.", 2492)
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
	UpdateQuestStepDescription(Quest, 1, "")

	AddQuestStep(Quest, 2, "There's likely a sickened citizen near the Temple of War", 1, 100, "I should follow Sneel's warning, and see if I can find any of these sickened citizens.  I'll search through the city and see what I can find.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "")

	AddQuestStep(Quest, 3, "Perhaps there is a sickened citizen dying alone in the streets of the city.", 1, 100, "I should follow Sneel's warning, and see if I can find any of these sickened citizens.  I'll search through the city and see what I can find.", 11)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found a few of the sickened citizens, and the news I have for Sneel does not appear to be good.")

	AddQuestStepChat(Quest, 4, "Return to Sneel in Freeport with the news.", 1, "I should return to Sneel, and inform him of what I found.", 11, 5590218)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "")

	AddQuestStep(Quest, 5, "Search for the strangely acting ratonga in Freeport.", 1, 100, "I should return to Sneel, and inform him of what I found.", 11)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "")

	AddQuestStepLocation(Quest, 6, "I should investigate the door that the ratonga were standing close to.", 1, "I should return to Sneel, and inform him of what I found.", 11, 123) -- need ID
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "")

	AddQuestStepKill(Quest, 7, "Defeat the roekillik", 1, 100, "I should return to Sneel, and inform him of what I found.", 2483, 123) -- need ID
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "")

	AddQuestStepChat(Quest, 8, "Return to Sneel with the news of your discovery", 1, "I should return to Sneel, and inform him of what I found.", 11, 5590218)
	AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "")
	UpdateQuestTaskGroupDescription(Quest, 2, "It seems that the roekillik have already infiltrated Freeport.  Hopefully, our warning will not fall on deaf ears.")

	UpdateQuestDescription(Quest, "That was frighteningly close - the roekillik HAD broken into Freeport, and were beginning to unleash their own diabolical plans.  It might not have been the Dark Agenda, but it's clear they are testing the civilized races of Norrath.  Hopefully our evidence will convince the Overlord of the seriousness of this situation - if not, I doubt any of the ratonga will remain in Freeport, and the citizens will find themselves facing the Roekillik without us.")
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
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
