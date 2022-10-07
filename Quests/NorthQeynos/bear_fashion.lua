--[[
    Script Name    : Quests/NorthQeynos/bear_fashion.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.11 02:05:55
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: Rachael Clothspinner
        Preceded by: None
        Followed by: 
--]]



function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need four fine pelts from Oakmyst great bears.", 4, 75, "I need to get four fine pelts from Oakmyst great bears.", 124, 1950023)
	AddQuestStepCompleteAction(Quest, 1, "Step1Compelte")
    UpdateQuestZone(Quest,"Oakmyst Forest")
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

function Step1Compelte(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've got the four fine pelts.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've filled the order of four fine pelts.")
    UpdateQuestZone(Quest,"North Qeynos")
	AddQuestStepChat(Quest, 2, "I need to deliver these fine bear pelts to Rachael Clothspinner.", 1, "Rachael Clothspinner is waiting for these fine pelts in North Qeynos.", 124, 2220060)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've delivered the pelts to Rachael Clothspinner.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've completed Rachael Clothspinner's order of four fine pelts.")

	UpdateQuestDescription(Quest, "I've filled Rachael's order and she mentioned that I could make a decent living filling unfulfilled Far Seas Trading Company orders.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Compelte(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
		end
end
