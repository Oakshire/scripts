--[[
    Script Name    : Quests/Everfrost/a_pioneer_without_a_wagon.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2016.02.07 14:18:25
    Script Purpose : 

        Zone       : Everfrost
        Quest Giver: Li Ning Ventur
        Preceded by: The Stories of Everfrost
        Followed by: The Gift of a Token
--]]

function Init(Quest)

     AddQuestRewardCoin(Quest, math.random(30,70), math.random(50,90), math.random(3,4), 0)

     AddQuestStep(Quest, 1, "I need to retrieve crates of the family's belongings from the ocean floor", 8, 100, "I should recover crates full of the Venturs' possessions from the ocean floor.")
     AddQuestStepCompleteAction(Quest, 1, "GotCrates")

end

function Accepted(Quest, QuestGiver, Player)

    FaceTarget(QuestGiver, Player)
    conversation = CreateConversation()

    AddConversationOption(conversation, "I am glad to help.")
    AddConversationOption(conversation, "I am sure your gratitude will be expressed in some sort of coin reward.")
    StartConversation(conversation, QuestGiver, Player, "You cannot know what it means to hear that.")

end

function Declined(Quest, QuestGiver, Player)

end


function Reload(Quest, QuestGiver, Player, Step)

end

function Deleted(Quest, QuestGiver, Player)

end