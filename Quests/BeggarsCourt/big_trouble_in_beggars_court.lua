--[[
	Script Name		:	big_trouble_in_beggars_court.lua
	Script Purpose	:	Handles the quest, "Big Trouble in Beggar's Court"
	Script Author	:	torsten
	Script Date		:	18.07.2022
	Script Notes	:	

	Zone			:	Beggar's Court
	Quest Giver		:	Alucius Valus
	Preceded by		:	Saving History
	Followed by		:	Tricking the Traitor
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to locate Durio and sell this package to him.", 1, "I need to sell a package to Durio for Alucius.", 11, 1370027)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke with Durio and discovered Alucius has betrayed me.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I spoke with Durio and discovered Alucius is a traitor.")

    AddQuestStepChat(Quest, 2, "I will locate and deliver documents to Kaseo Volcatius.", 1, "I turn over the documents to the Freeport Militia.", 11, 1370057)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I turned over the documents to the Freeport Militia.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I turned over the documents to the Freeport Militia and was rewarded for my loyalty.")

    AddQuestStepChat(Quest, 3, "I should return to Alucius.", 1, "I should return to Alucius.", 11, 1370005)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "That snake Alucius was trying to sell off the fake documents I obtained for him earlier! I turned over the documents to a captain of the Freeport Militia as Durio suggested. Not only was I rewarded, but it felt good to be able to help Freeport and preserve the reputation of the Overlord.")
	GiveQuestReward(Quest, Player)
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

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end
