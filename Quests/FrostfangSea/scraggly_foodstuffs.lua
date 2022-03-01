--[[
	Script Name	: Quests/FrostfangSea/scraggly_foodstuffs.lua
	Script Purpose	: the quest "Scraggly Foodstuffs"
	Script Author	: theFoof
	Script Date	: 2013.5.15

        Zone            : Frostfang Sea
        Quest Giver     : Arrin Clelland
        Preceded by     : Repelling Little Critters
        Followed by     : Frigid Fishing
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(20,90), math.random(2,3), 0, 0)
    AddQuestStep(Quest, 1, "Gather some tubers from the scraggly shrubs.", 3, 100, "I must gather some scraggly tubers on the windy cliffs overlooking the sea, on the northern side of Pilgrims' Landing.", 2313)
	AddQuestStepCompleteAction(Quest, 1, "GatheredTubers")
end

function GatheredTubers(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered some tubers from the scraggly shrubs growing on the northeast side of Pilgrims' Landing.")
	AddQuestStepChat(Quest, 2, "Return the scraggly tubers to Arrin.", 1, " I am to return the tubers to Arrin Clelland, Camp Provisioner, in Pilgrims' Landing.", 2313, 4700000)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    GatheredTubers(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    CompleteQuest(Quest, QuestGiver, Player)
	end
end