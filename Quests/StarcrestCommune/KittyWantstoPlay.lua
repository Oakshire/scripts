--[[
    Script Name    : Quests/StarcrestCommune/KittyWantstoPlay.lua
    Script Author  : Dorbin
    Script Date    : 06.29.2022
    Script Purpose : 

        Zone       : StarcrestCommune
        Quest Giver: Molly Daysun
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to return this playing piece to the people playing the King's Field game here in Starcrest.", 1, "I should take this playing piece back to people playing the King's Field game.", 1058, 2340011)
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
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I returned the playing piece to the King's Field game.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I returned the playing piece to the people playing the King's Field game.")

	AddQuestStepChat(Quest, 2, "I should let Molly know I've returned the King's Field piece.", 1, "Molly will be happy to know she's not in trouble for Kitty taking the King's Field game piece.", 1058, 2340003)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I returned to Molly.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Molly.")

	UpdateQuestDescription(Quest, "I returned the playing piece that was missing from the King's Field game in Starcrest.  Vandis claims the reason why he was losing was because he didn't have the pawn.  He gave me a pet cage for the cat if it happens to go stealing pieces again.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
		end
end
