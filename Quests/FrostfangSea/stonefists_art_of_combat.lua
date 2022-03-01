--[[
	Script Name	: Quests/FrostfangSea/stonefists_art_of_combat.lua
	Script Purpose	: Handles the quest "Stonefist's Art of Combat"
	Script Author	: theFoof
	Script Date	: 2013.5.3

        Zone            : Frostfang Sea
        Quest Giver     : Yasha Redblade
        Preceded by     : A Fine Halasian Welcome
        Followed by     : Call to Arms
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(10,80), math.random(1,3), 0, 0)
        AddQuestStepChat(Quest, 1, "Speak to Trainer Ragnhild Stonefist.", 1, "I need to learn about combat from Trainer Ragnhild Stonefist at the Training Grounds east of Yasha Redblade.", 0, 4700015)
	AddQuestStepCompleteAction(Quest, 1, "TalkedToStonefist")
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function TalkedToStonefist(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I have spoken with Ragnhild Stonefist.")
    AddQuestStepKill(Quest, 2, "Defeat a sparring partner in combat.", 1, 100, "I need to learn about combat from Trainer Ragnhild Stonefist at the Training Grounds east of Yasha Redblade.", 0, 4700018, 4700017, 4700014)
	AddQuestStepCompleteAction(Quest, 2, "KilledSparringPartner")
end

function KilledSparringPartner(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 2, "I have defeated a sparring partner in combat.")
    AddQuestStepChat(Quest, 3, "Speak with Trainer Ragnhild Stonefist.", 1, "I need to learn about combat from Trainer Ragnhild Stonefist at the Training Grounds east of Yasha Redblade.", 0, 4700015)
	AddQuestStepCompleteAction(Quest, 3, "ReturnedToStonefist")
end

function ReturnedToStonefist(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have won a match against one of the sparring partners.")
	AddQuestStepChat(Quest, 4, "Return to Yasha Redblade.", 1, "I am to return to Yasha Redblade near the ship's hull on Pilgrims' Landing.", 0, 4700005)
	AddQuestStepCompleteAction(Quest, 4, "ReturnToYasha")
end

function ReturnToYasha(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end


function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		TalkedToStonefist(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    KilledSparringPartner(Quest, QuestGiver, Player)
	elseif Step == 3 then
	    ReturnedToStonefist(Quest, QuestGiver, Player)
	elseif Step == 4 then
	    ReturnToYasha(Quest, QuestGiver, Player)
	end
end


