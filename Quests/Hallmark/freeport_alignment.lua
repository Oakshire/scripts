--[[
    Script Name    : Quests/Hallmark/freeport_alignment.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.26 12:09:30
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: Ambassador T'Kirr (3250005)
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must speak with Duke Ferrin.", 1, "Duke Ferrin will arrange transport for me to Freeport.", 11, 3250003)
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
	UpdateQuestStepDescription(Quest, 1, "I've spoken with Duke Ferrin.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Duke Ferrin has arranged transport for me to Freeport.")

	AddQuestStepChat(Quest, 2, "I must find the Overseer", 1, "I have been instructed to seek out the Overseer when I arrive in Freeport.   I should ring the bell on the docks to book passage to the city.", 11, 000)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I found the Overseer")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with the Overseer.")

	UpdateQuestDescription(Quest, "I've managed to make my way to the city of Freeport.  Although things aren't exactly as I was promised by Ambassador T'Kirr, I will make do until I am able to forge my own destiny.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
