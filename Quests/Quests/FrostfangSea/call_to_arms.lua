--[[
	Script Name	: Quests/FrostfangSea/call_to_arms.lua
	Script Purpose	: Handles the quest "Call to Arms"
	Script Author	: thefoof
	Script Date	: 2013.5.4

        Zone            : Frostfang Sea
        Quest Giver     : Yasha Redblade
        Preceded by     : Stonefist's Art of Combat
        Followed by     : Boatload of Work
--]]

function Init(Quest)
    AddQuestRewardCoin(Quest, math.random(8,80), math.random(2,5), 0, 0)
    AddQuestStepKill(Quest, 1, "Slay Ry'Gorr centurions.", 4, 100, "I am to slay any of the Ry'Gorr centurions that are attacking the southeastern side of Pilgrims' Landing", 611, 4700027, 4700413)
    AddQuestStepCompleteAction(Quest, 1, "KilledOrcs")
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end
function KilledOrcs(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I defended Pilgrims' Landing by slaying several of the attacking Ry'Gorr centurions!")
    AddQuestStepChat(Quest, 2, "Return to Yasha Redblade", 1, "I am to return to to Yasha Redblade near the broken ship's hull on Pilgrims' Landing.", 0, 4700005)
    AddQuestStepCompleteAction(Quest, 2, "TalkedYasha")
end

function TalkedYasha(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    KilledOrcs(Quest, QuestGiver, Player)
    elseif Step == 2 then
	    TalkedYasha(Quest, QuestGiver, Player)
    end
end