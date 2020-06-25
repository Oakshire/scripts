--[[
	Script Name	: Quests/FrostfangSea/ride_upon_the_gwenevyn_II.lua
	Script Purpose	: the quest Ride Upon the Gwenevun II
	Script Author	: theFoof
	Script Date	: 2013.5.14

        Zone            : Frostfang Sea
        Quest Giver     : Yasha Redblade
        Preceded by     : Boatload of Work
        Followed by     : 
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(10,70), math.random(0,1), 0, 0)
    AddQuestStepChat(Quest, 1, "Report to Wregan Firebeard.", 1, "I am to report to Wregan Firebeard at Gwenevyn's Cove.", 0, 4700035)
	AddQuestStepCompleteAction(Quest, 1, "CompletedQuest")
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function CompletedQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end