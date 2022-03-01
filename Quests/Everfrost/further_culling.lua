--[[
    Script Name    : Quests/Everfrost/further_culling.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2015.11.29 12:11:13
    Script Purpose : 

        Zone       : Everfrost
        Quest Giver: Brahnagan MacLahnan
        Preceded by: Cull the Threat to the Pioneers
        Followed by: Supplies for the Pioneers
--]]

function Init(Quest)
    AddQuestRewardCoin(Quest, math.random(60,97), math.random(50,80), 1, 0)
    AddQuestStepKill(Quest, 1, "I need to kill the ancient frostfins that live in the waters around Everfrost.", 10, 100, "I need to clear the waters of ancient frostfins to make the area safer for travelers.", 611, 410001)
    AddQuestStepCompleteAction(Quest, 1, "KilledSharks")

end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Um, I hope not.")
    StartConversation(conversation, QuestGiver, Player, "I am sure you won't lose too many fingers dealing with them.")


end

function KilledSharks(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have cleared the waters of ancient frostfins.")
    SetCompleteFlag(Quest)
    AddQuestStepChat(Quest, 2, "I should speak with Brahnagan MacLahgan.", 1, "I need to return to MacLahnan and tell him I've done as he asked.", 0, 410006)
    AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function Declined(Quest, QuestGiver, Player)

end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I have reported my success to MacLahnan.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)

end

