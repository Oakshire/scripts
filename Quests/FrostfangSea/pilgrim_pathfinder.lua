--[[
	Script Name	: Quests/FrostfangSea/pilgrim_pathfinder.lua
	Script Purpose	: the quest Pilgrim Pathfinder
	Script Author	: theFoof
	Script Date	: 2013.5.19

        Zone            : Frostfang Sea
        Quest Giver     : Verien Skysigh
        Preceded by     : Sifting Through the Grizzly Garbage
        Followed by     : Pilgrim Scout
--]]

function Init(Quest)
    AddQuestRewardCoin(Quest, math.random(10,90), math.random(2,5), 0, 0)
    AddQuestStepLocation(Quest, 1, "Hike to the top of the blizzard grizzly cave.", 15, "From the top of the blizzard grizzly cave you should be able to find the best path to the city of New Halas.", 0, 166.79, 65.23, -470.68)
	AddQuestStepCompleteAction(Quest, 1, "HikedTop")
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function HikedTop(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "There seems to be a path leading into the hills. Perhaps by taking it you can avoid the dangerous plains below?")
    AddQuestStepChat(Quest, 2, "Return to Verien Skysigh and tell him of the path leading into the hills above the dangerous plains.", 1, "You should return to Verien Skysigh, at the pilgrims' camp within Gwenevyn's Cove, and tell him of the path leading into the hills above the dangerous plains.", 0, 4700034)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	    HikedTop(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    CompleteQuest(Quest, QuestGiver, Player)
	end
end