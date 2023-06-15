--[[
    Script Name    : Quests/Unknown/qeynos_brawler_gear__level_10.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.14 12:06:53
    Script Purpose : EMU gear pack for testing

        Zone       : Unknown
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to talk to the Shady Swashbuckler XVII.", 1, "I have a voucher for Level 10 testing gear I can turn in.", 75, 121873)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have claimed Level 10 Brawler testing gear.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have claimed Level 10 Brawler testing gear.")

	UpdateQuestDescription(Quest, "I have claimed Level 10 Brawler testing gear.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
