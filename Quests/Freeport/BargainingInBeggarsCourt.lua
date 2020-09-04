--[[
	Script Name		:	bargaining_in_beggars_court.lua
	Script Purpose	:	Handles the quest, "Bargaining in Beggar's Court"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	01.09.2020
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "Search the region for clues", 5, "I need to find out who it it that is encouraging barbarians to leave Freeport for New Halas inside Beggar's Court: Sweat-Stained Cobbles.", 11, 47.60, -7.00, 52.80)
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
	UpdateQuestStepDescription(Quest, 1, "I heard of a meeting being held in the northwestern common domicile.")

	AddQuestStepLocation(Quest, 2, "Investigate the meeting being held in the northwestern common domicile", 5 , "I need to find out who it it that is encouraging barbarians to leave Freeport for New Halas inside Beggar's Court: Sweat-Stained Cobbles.", 11, 51.18, 5.10, -31.55)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found Clan Chief Malachi Sleetsaber's meeting.")

	AddQuestStep(Quest, 3, "Listen to Clan Chief Malachi Sleetsaber's speech", 1, 100, "I need to find out who it it that is encouraging barbarians to leave Freeport for New Halas inside Beggar's Court: Sweat-Stained Cobbles.", 11)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "")
	UpdateQuestTaskGroupDescription(Quest, 1, "Clan Chief Malachi Sleetsaber is the one encouraging barbarians to leave Freeport for New Halas.")

	AddQuestStepLocation(Quest, 4, "Find Chief Sleetsaber's home", 5, "I need to find a way to coerce Clan Chief Malachi Sleetsaber into recanting his speech.  He must encourage barbarians to remain in Freeport, instead.", 11, -30.10, 2.50, -28.19)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I found Chief Sleetsaber's home and wife.")

	AddQuestStepChat(Quest, 5, "Threaten Hanne Sleetsaber", 1, "I need to find a way to coerce Clan Chief Malachi Sleetsaber into recanting his speech.  He must encourage barbarians to remain in Freeport, instead.", 11, 111)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I threatened Hanne Sleetsaber and have slain their wolf pups.")

	AddQuestStepChat(Quest, 6, "Threaten Chief Sleetsaber", 1, "I need to find a way to coerce Clan Chief Malachi Sleetsaber into recanting his speech.  He must encourage barbarians to remain in Freeport, instead.", 11, 5590515)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "")
	UpdateQuestTaskGroupDescription(Quest, 2, "Clan Chief Malachi Sleetsaber has seen the error of his ways and will now be encouraging barbarians to remain in Freeport.")

	AddQuestStep(Quest, 7, "Return to the northwestern common domicile to witness Clan Chief Malachi's speech", 1, 100, "Clan Chief Malachi Sleetsaber told me he was going to publicly praise Lucan.", 11)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "")
	UpdateQuestTaskGroupDescription(Quest, 3, "Clan Chief Malachi Sleetsaber publicly praised Lucan, and is now encouraging other barbarians to remain in Freeport.")

	AddQuestStepChat(Quest, 8, "Return to Selyse Brazenroot", 1, "I should return to Selyse Brazenroot, at the Freeport Militia House in the city of Freeport.", 11, 5590142)
	AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "")
	UpdateQuestTaskGroupDescription(Quest, 4, "I returned to Selyse Brazenroot, the barbarian mentor.")

	UpdateQuestDescription(Quest, "Selyse Brazenroot, the barbarian mentor in Freeport, was proud to hear that I had identified the would-be betrayer as Clan Chief Malachi Sleetsaber, and cleaved some sense into him, convincing him to reverse his prior messages and use his charisma and title to convince our barbarian brethren to stay within Freeport, instead.")
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

