--[[
	Script Name	: Quests/FrostfangSea/sifting_through_the_grizzly_garbage.lua
	Script Purpose	: the quest Sifting Through the Grizzly Garbage
	Script Author	: theFoof
	Script Date	: 2013.5.19

        Zone            : Frostfang Sea
        Quest Giver     : Verien Skysigh
        Preceded by     : Beets the Alternative
        Followed by     : 
--]]

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(10,80), math.random(2,5), 0, 0)
    AddQuestStep(Quest, 1, "Search for any sign of the orcs within the blizzard grizzly den.", 3, 100, "Search for any sign of the orcs within the blizzard grizzly den north west of the pilgrims' camp in Gwenevyn's Cove.", 2359)
	AddQuestStepCompleteAction(Quest, 1, "Searched")
end

function Searched(Quest, QuestGiver, Player)
    RemoveSpawnAccess(GetSpawn(QuestGiver, 4701834), Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "You found no sign of the orcs within the blizzard grizzly den.")
    AddQuestStepChat(Quest, 2, "Return to Verien Skysigh at the pilgrims' camp. You told Verien how there was no sign of the orcs within the blizzard grizzly cave.", 1, "You should return to Verien Skysigh, at the pilgrims' camp within Gwenevyn's Cove, even though you haven't been able to find any sign of the orcs.", 0, 4700034)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    Searched(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    CompleteQuest(Quest, QuestGiver, Player)
	end
end