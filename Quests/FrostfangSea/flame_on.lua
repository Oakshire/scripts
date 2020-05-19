--[[
	Script Name	: Quests/FrostfangSea/flame_on.lua
	Script Purpose	: the quest Flame On!
	Script Author	: theFoof
	Script Date	: 2013.5.9

        Zone            : Frostfang Sea
        Quest Giver     : Yasha Redblade
        Preceded by     : Boatload of Work
        Followed by     : Ride Upon the Gwenevyn II
--]]

function Init(Quest)
    AddQuestRewardCoin(Quest, math.random (10,80), math.random(1,2), 0, 0)
    AddQuestStep(Quest, 1, "Light the signal fire.", 1, 100, "I must climb the rope ladder affixed to the imposing wall of ice east of Yasha Redblade to reach the signal fire.", 2233)
	AddQuestStepCompleteAction(Quest, 1, "LitFire")
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function LitFire(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have lit the signal fire.")
    AddQuestStep(Quest, 2, "Kill the ambushing orcs!", 1, 100, "I was ambushed by orcs while I was lighting the signal fire on the ice shelf above the eastern end of the island!", 0)
    AddQuestStepCompleteAction(Quest, 2, "KilledOrcs")
end

function KilledOrcs(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 2, "I was ambushed by orcs while I was lighting the signal fire! I faced them valiantly and live to tell the tale.")
	AddQuestStepChat(Quest, 3, "Return to Yasha Redblade", 1, "I am to return to Yasha Redblade near the broken ship's hull on Pilgrims' Landing.", 0, 4700005)
	AddQuestStepCompleteAction(Quest, 3, "CompletedQuest")
end

function CompletedQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    LitFire(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    KilledOrcs(Quest, QuestGiver, Player)
    elseif Step == 3 then
        CompletedQuest(Quest, QuestGiver, Player)
    end
end