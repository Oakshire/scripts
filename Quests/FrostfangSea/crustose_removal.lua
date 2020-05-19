--[[
	Script Name	: Quests/FrostfangSea/crustose_removal.lua
	Script Purpose	: the quest Crustose Removal
	Script Author	: theFoof
	Script Date	: 2013.5.12

        Zone            : Frostfang Sea
        Quest Giver     : Arrin Clelland
        Preceded by     : None
        Followed by     : Repelling Little Critters
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(10,50), math.random(1,3), 0, 0)
    AddQuestStepKill(Quest, 1, "Slay crustore defenders or sporetenders.", 4, 100, "I am to slay any of the crustose defenders or sporetenders I find on the western side of the isle in search of spore samples.", 811, 4700405, 4700003, 4700408, 4700019)
	AddQuestStepCompleteAction(Quest, 1, "KilledFungus")
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function KilledFungus(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have slain crustose fungusmen I found on the western side of the isle.")
	AddQuestStepChat(Quest, 2, "Return to Arrin Clelland.", 1, "I am to return to Arrin Clelland in Pilgrims' Landing.", 0, 4700000)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    KilledFungus(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    CompleteQuest(Quest, QuestGiver, Player)
	end
end