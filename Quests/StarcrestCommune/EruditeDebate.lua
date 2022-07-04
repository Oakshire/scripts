--[[
    Script Name    : Quests/StarcrestCommune/EruditeDebate.lua
    Script Author  : Jabantiz
    Script Date    : 2017.12.30 05:12:26
    Script Purpose : 

        Zone       : StarcrestCommune
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to give a note to Oomitelmora.", 1, "I need to deliver the message to Oomitelmora who is playing a game of King's Field in this village.", 11, 2340012)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
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

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I gave the note to Oomitelmora.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've delivered the message to Oomitelmora.")

	UpdateQuestDescription(Quest, "The letter to Oomitelmora has been delivered.  They seem to be in some sort of a theological debate.  I believe there is more than meets the eye with those two.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


