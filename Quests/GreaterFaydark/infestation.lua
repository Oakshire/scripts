--[[
    Script Name	   : Quests/GreaterFaydark/infestation.lua
    Script Purpose : Handles the quest "Infestation"
    Script Author  : Scatman
    Script Date    : 2013.07.31
    
    Zone        : Greater Faydark
    Quest Giver : Matron of the Nursery
    Preceded by : none
    Followed by : Running Off the Grobin Scouts
--]]


function Init(Quest)
    -- Steadfast Bracelet
    -- Sand-Etched Bracers
    -- Shrumbler Grips
    -- Matron's Sleeve
    -- Harmonic Band
    AddQuestRewardCoin(Quest, 47, 2)


end

function Accepted(Quest, QuestGiver, Player)
AddQuestStepKill(Quest, 1, "Kill shrumbler hatchlings.", 4, 100, ".", 98, 1140210, 1140235)
    AddQuestStepCompleteAction(Quest, 1, "KilledAllShrumblers")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end

--[[

function Accepted(Quest, QuestGiver, Player)
     if QuestGiver ~= nil then
    if GetDistance(Player, QuestGiver) < 30 then
        conversation = CreateConversation()
        FaceTarget(QuestGiver, Player)
        AddConversationOption(conversation, "I will return")
        StartConversation(conversation, QuestGiver, Player, "I hope so. You are still quite young and those creatures can be very dangerous!")
    end
     end
end

function Declined(Quest, QuestGiver, Player)
end

function KilledAllShrumblers(Quest, QuestGiver, Player)
     UpdateQuestTaskGroupDescription(Quest, 1, "I got rid of the shrumblers that were threatening the spirit blooms.")
     AddQuestStepChat(Quest, 2, "I should let the Matron of the Nursery know I took care of the shrumbler infestation.", 1, ".", 0, 1140004)
     AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
     UpdateQuestDescription(Quest, "I got rid of the shrumbler worms that were eating the spirit blooms in the nursery.")
     GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
     if Step == 1 then
    KilledAllShrumblers(Quest, QuestGiver, Player)
     end
end

--]]


