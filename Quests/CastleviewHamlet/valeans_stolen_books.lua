--[[
    Script Name    : Quests/CastleviewHamlet/valeans_stolen_books.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.25 03:01:07
    Script Purpose : 

        Zone       : CastleviewHamlet
        Quest Giver: Innkeeper Valean
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I must search for Valean's books.", 2, "I need to seek out the stolen books within the Down Below section of the catacombs. ", 11, -13,0.8, -5.93)
	AddQuestStepCompleteAction(Quest, 1, "DownBelow")
	UpdateQuestZone(Quest, "The Down Below")
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

function DownBelow(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I discovered Valean's stolen book in the Down Below. ")
	UpdateQuestTaskGroupDescription(Quest, 1, "I discovered Valean's stolen book in the Down Below.")
	
	UpdateQuestZone(Quest, "Castleview Hamlet")
	AddQuestStepChat(Quest, 2, "I need to return to Valean.", 1, "I need to tell Valean that his books are being sold in the catacombs.", 0, 2360024)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I returned to Valean")
	UpdateQuestTaskGroupDescription(Quest, 2, "I told Valean about his books in the Down Below.")
	
	UpdateQuestDescription(Quest, "I have discovered Innkeepers Valean's stolen books in the catacombs. I relayed the information to the Valean and he has given me a reward.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		DownBelow(Quest, QuestGiver, Player)
	end
		if Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end