--[[
	Script Name		:	Quests/Freeport/TheHiddenNewHalasian.lua
	Script Purpose	:	Handles the quest, "The Hidden New Halasian"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	30.08.2020
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak with Mikki Denune, near Dreadnaught's Plaza", 1, "I need to speak with the suspected traitors on the topics of New Halas and religion, in hopes that they’ll reveal themselves.", 11, 5590179)
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

	AddQuestStepChat(Quest, 2, "Speak with Clan Chief Malachi Sleetsaber, near the guild hall in southern Freeport", 1, "I need to speak with the suspected traitors on the topics of New Halas and religion, in hopes that they’ll reveal themselves.", 11, 5590515)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "")

	AddQuestStepChat(Quest, 3, "Speak with Gerhild Maclennan, near The Emporium", 1, "I need to speak with the suspected traitors on the topics of New Halas and religion, in hopes that they’ll reveal themselves.", 11, 5590198)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "Gerhild Maclennan spoke of Erollisi Marr and New Halas!")

	AddQuestStepChat(Quest, 4, "Speak with Asbjorn Greyaxe, in the Jade Tiger's Den", 1, "I need to speak with the suspected traitors on the topics of New Halas and religion, in hopes that they’ll reveal themselves.", 11, 5590315)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "")
	UpdateQuestTaskGroupDescription(Quest, 1, "I believe that I flushed out the traitor, Gerhild Maclennan, by striking up a conversation about New Halas and religion.")

	AddQuestStepChat(Quest, 5, "Return to Selyse Brazenroot", 1, "I should return to Selyse Brazenroot, at the Freeport Militia House in the city of Freeport.", 11, 5590142)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Selyse Brazenroot, the barbarian mentor.")

	UpdateQuestDescription(Quest, "Selyse Brazenroot, the barbarian mentor in Freeport, appreciated my attempt to flush out the barbarian encouraging others to move from Freeport to New Halas, despite her doubts that I found the individual.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end


