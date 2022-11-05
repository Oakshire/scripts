--[[
    Script Name    : Quests/Hallmark/welcome_to_qeynos_citizen.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.31 12:10:43
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Mervos Stadrin in North Qeynos will tell me about collecting objects in Norrath.", 1, "I should read through my Qeynos' citizenship booklet.", 11, 2220015)
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
	UpdateQuestStepDescription(Quest, 1, "I've learned about collections from Mervos Stadrin.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I should read the Conclusion of the booklet.")

	UpdateQuestDescription(Quest, "While I might have learned these things on my own, it's thoughtful of the Queen to provide this information to the citizens of Qeynos.  Long live Antonia Bayle!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end