--[[
    Script Name    : Quests/Everfrost/cull_the_threat_to_the_pioneers.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2015.10.24 02:10:26
    Script Purpose : 

        Zone       : Everfrost
        Quest Giver: Brahnagan MacLahnan
        Preceded by: The Stories of Everfrost
        Followed by: Further Culling
--]]

function Init(Quest)
    AddQuestRewardCoin(Quest, math.random(60,97), math.random(50,80), 1, 0)
    AddQuestStepKill(Quest, 1, "I need to kill the primal frostfins that inhabit the waters around Everfrost.", 15, 100, "Pioneers crossing the Bay have often been attacked by frostfin sharks that inhabit its waters. I should cull this threat and reduce the number of primal frostfins living within the Bay.", 611, 410003)
    AddQuestStepCompleteAction(Quest, 1, "KilledSharks")

end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I can do that.")
    StartConversation(conversation, QuestGiver, Player, "Good, report to me when it's done. You'll be rewarded. Having fewer of the sharks will encourage more pioneers to come.")


end

function KilledSharks(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have cleared the waters of primal frostfins.")
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



