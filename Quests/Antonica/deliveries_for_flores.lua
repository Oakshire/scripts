--[[
    Script Name    : Quests/Antonica/deliveries_for_flores.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.08 09:08:16
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: Flores(120087)
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to deliver a crate to Merchant Novak.", 1, "I must deliver a crate of Flores' merchandise to Merchant Novak by the lighthouse.", 654, 120099)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/merchant_flores/antonica/merchantflores002.mp3", "", "", 2413854703, 2789428713, Player)
	AddConversationOption(conversation, "Hey, wait that's my journal... err, all right I suppose it's too late.")
	StartConversation(conversation, QuestGiver, Player, "I'll pay you a cut of my earnings.  You'll take the first crate of supplies to Novak over by the lighthouse. The second must go to Geddard at Gnollslayer Keep. I see you've a little book.  Here, let me write down where you need to go.   Make sure to bring back their delivery pouches when you're through.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've delivered the crate to Merchant Novak.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've delivered the crate to Novak and picked up her pouch.")

	AddQuestStepChat(Quest, 2, "I need to deliver a crate to Merchant Geddard.", 1, "I must deliver a crate of Flores' merchandise to Merchant Geddard in Gnollslayer Keep.", 654, 120398)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've delivered the crate to Merchant Geddard.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've delivered the crate to Geddard and picked up his pouch.")

	AddQuestStepChat(Quest, 3, "I need to deliver the pouches to Merchant Flores.", 1, "I must deliver both Novak and Geddard's pouches to Flores outside of Qeynos.", 401, 120087)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I've delivered the pouches to Merchant Flores.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've delivered Novak and Geddard's pouches to Flores.")

	UpdateQuestDescription(Quest, "I managed to deliver both crates and bring back Novak and Geddard's pouches to Flores. Those crates just about broke my back! But I suppose not many want to trudge out there with supplies, so every run has got to count.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

