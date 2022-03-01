--[[
    Script Name    : Quests/Everfrost/fish_for_grunthor.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2015.09.03 12:09:31
    Script Purpose : 

        Zone       : Everfrost
        Quest Giver: Burm Grunthor
        Preceded by: None
        Followed by: None
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(27,80), 1, 0)
	AddQuestStepObtainItem(Quest, 1, "I need to harvest a number of fish for Grunthor.", 10, 100, "I need to fish for Grunthor in Everfrost.", 2549, 4869, 5475)
	AddQuestStepCompleteAction(Quest, 1, "GatheredFish")
end


function Declined(Quest, QuestGiver, Player)
end

function Accepted(Quest, QuestGiver, Player)
end


function GatheredFish(Quest, QuestGiver, Player)
        UpdateQuestTaskGroupDescription(Quest, 1, "I have harvested a number of fish for Grunthor.")
        SetCompleteFlag(Quest)
	AddQuestStepChat(Quest, 2, "I should return these fish to Grunthor.", 1, "I should return these fish to Grunthor.", 0, 410014)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 2, "I have fished a number of fish for Grunthor.")
    GiveQuestReward(Quest, Player)
end


function Reload(Quest, QuestGiver, Player, Step)
	if QuestStepIsComplete(Player, 136, 1) then
		GatheredFish(Quest, QuestGiver, Player)
	elseif QuestStepIsComplete(Player, 136, 2) then
		CompleteQuest(Quest, QuestGiver, Player)
	end
end