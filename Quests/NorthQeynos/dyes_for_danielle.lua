--[[
    Script Name    : Quests/NorthQeynos/dyes_for_danielle.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.11 02:05:37
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver:  Danielle Clothspinner
        Preceded by: None
        Followed by: 
--]]
--

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to pick up two dye tubs from Khalil'Mun.", 1, "Danielle Clothspinner wants me to pick up two dye tubs from Khalil'Mun in South Qeynos.", 11, 2310048)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I picked up the dye from Khalil'Mun.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Khalil'Mun was happy to receive payment for his marvelous dye.")
	AddQuestStepChat(Quest, 2, "I need to deliver this dye to Danielle Clothspinner.", 1, "Danielle Clothspinner is expecting this dye in North Qeynos so she can complete her project.", 356, 2220061)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
    UpdateQuestZone(Quest,"South Qeynos")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I delivered dye to Danielle Clothspinner.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Danielle Clothspinner was happy to finally get the dye she was waiting for to finish her work.")

	UpdateQuestDescription(Quest, "After returning with the dyes from Khalil'Mun's shop, Danielle was able to complete her work for the day.  I found myself happy to do the task for her, and the pay for the pick-up wasn't too shabby either.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
		end
end

