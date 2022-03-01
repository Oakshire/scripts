--[[
    Script Name    : Quests/Antonica/letter_to_riason.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.29 06:08:27
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must deliver a letter to Riason at Windstalker Village in Antonica.", 1, "I must deliver Merchant Cooper's letter to Riason Hanagom at Windstalker pond.", 75, 120150)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Not to worry, I'll get it there... unread.")
	StartConversation(conversation, QuestGiver, Player, "Truly a lifesaver! Deliver this to Riason Hanagom, no need to return here when you're finished. Tell him that he'll need to pay you for your services. Do try not to look at it. The letter is rather personal and I would feel awkward if someone else were to read it.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've delivered the letter to Riason.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've delivered the letter to Riason Hanagom at Windstalker pond.")

	UpdateQuestDescription(Quest, "I've delivered the letter to Riason Hanagom as requested of me. I cannot say what will happen now, but the situation certainly seems less than savory.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

