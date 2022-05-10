--[[
    Script Name    : Quests/TheElddarGrove/helannis_golden_engraved_arrow.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.09 03:05:46
    Script Purpose : 

        Zone       : TheElddarGrove
        Quest Giver: Helanni Firewyng
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must speak with Leona in South Qeynos.", 1, "I should take Helanni's golden engraved arrow to Leona in South Qeynos.", 626, 2310024)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
    UpdateQuestZone(Quest,"South Qeynos")
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
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Leona.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have taken Helanni's golden engraved arrow to Leona.")

	UpdateQuestDescription(Quest, "I gave Helanni's golden engraved arrow to her friend Leona Ward.  It is a small way for Leona to know that Helanni accomplished one of her aspirations.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

