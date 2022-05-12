--[[
    Script Name    : Quests/NorthQeynos/delivery_for_fhara.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.11 05:05:11
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: Baker Voleen
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to deliver a basket to Fhara Hanford.", 1, "I need to get this basket of pastries over to Fhara Hanford.", 915, 2220229)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/baker_voleen/qey_north/quests/bakervoleen/voleen_x1_accept.mp3", "", "happy", 219256579, 2535249151, Player)
	AddConversationOption(conversation, "I'll head that way now.")
	StartConversation(conversation, QuestGiver, Player, "Fantastic!  Bring this basket to Fhara Hanford at her furniture shop.  When you return I'll reward you for your trouble.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've delivered the basket to Fhara Hanford.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Fhara Hanford appreciated the basket from Baker Voleen.")
	AddQuestStepChat(Quest, 2, "I need to return to Baker Voleen.", 1, "Voleen needs to know that Fhara recieved her delivery.", 11, 2220025)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've returned to Baker Voleen.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I told Voleen the delivery was successful.")

	UpdateQuestDescription(Quest, "The baker who sent me out to Fhara Hanford's shop to deliver a basket of pastries gave me some loaves of bread and a few coins for managing to take her basket of goods to Fhara's Furniture without devouring its contents.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
