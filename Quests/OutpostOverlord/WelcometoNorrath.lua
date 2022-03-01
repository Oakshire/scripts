--[[
    Script Name   	: Quests/OutpostOverlord/WelcometoNorrath.lua
    Script Author 	: Cynnar
    Script Date   	: 2018.09.22 01:09:08
    Script Purpose	: Handles the quest, "Welcome to Norrath"
	Script Notes	: Reward Tayil's Dark Inspiration Item is missing in our database.

        Zone       : OutpostOverlord
        Quest Giver: Offered upon first arriving on the island (Proximity)
        Preceded by: None
        Followed by: The Art of Combat
--]]

function Init(Quest)
	-- Tayil's Dark Inspiration
	
	AddQuestStepChat(Quest, 1, "Speak to Tayil N'Velex, outside the entrance of Sythor's Spire in the center of the outpost.", 1, "I should speak with Tayil N'Velex.  She is at the entrance to Sythor's Spire in the center of the outpost.", 11, 2780038)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
        UpdateQuestStepDescription(Quest, 1, "I spoke with Tayil N'Velex")
        UpdateQuestTaskGroupDescription(Quest, 1, "I spoke with Tayil N'Velex.")

	UpdateQuestDescription(Quest, "I have spoken with Tayil N'Velex.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end
function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end