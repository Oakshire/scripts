--[[
    Script Name    : Quests/ThunderingSteppes/AScryingShame.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.08 08:07:47
    Script Purpose : 

        Zone       : ThunderingSteppes
        Quest Giver: Tish Tickers (2490042)
        Preceded by: Watch your step in The Thundering Steppes, Part II
        Followed by: The Gnoll Cave
--]]

-- Quests
local WatchYourStepInTheTSPartII = 100

-- Items
local AnAncientSilverCoin = 3513

function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Find five ancient silver coins for Tish.", 5, 100, "I must use the scrying stones that Tish gave me to try to find five ancient silver coins.", 2166, AnAncientSilverCoin)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have used the scrying stones to find the five ancient silver coins for Tish.")

	AddQuestStepChat(Quest, 2, "Return to Tish Tickers.", 1, "I must bring Tish her coins so that she can repay her debt and avoid a visit from the collection clockworks.", 11, 2490042)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, QuestGiver, Player, "Great! Thank you! Here, take these five scrying stones and see if you can get me my ancient silver coins. If you run out of stones, you might need to shop around and see if some of the local merchants have some. Please be fast. I don't want to get a visit from the clockworks...")
	SetStepComplete(Player, WatchYourStepInTheTSPartII, 1)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	end
end