--[[
    Script Name    : Quests/SouthQeynos/the_former_resting_place_of_varsoon.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.03 02:06:10
    Script Purpose : 

        Zone       : SouthQeynos
        Quest Giver: Feodra Iceslayer
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to go to the Tomb of Varsoon in Antonica.", 6, "I would like to see this weakened Tomb of Varsoon on the Forbidden Isle off the coast of Antonica.", 11, 362.10, -19.69, -662.95)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
    UpdateQuestZone(Quest,"Antonica")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	AddConversationOption(conversation, "I'll be careful.  Thank you for the directions.")
	StartConversation(conversation, QuestGiver, Player, "Heck, I'll tell you where it is! Turn left as you leave the city gates; go through Klicnik Fields. You'll see the islands the tomb rests on.  You go any further ... well, that's your decision, not mine.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I went to the Tomb of Varsoon.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I went to the Tomb of Varsoon and saw that the crypt had been split open.")

	UpdateQuestDescription(Quest, "I went to the Tomb of Varsoon and saw that the crypt had been split open.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
