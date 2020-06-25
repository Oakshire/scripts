--[[
    Script Name    : Quests/Everfrost/scouting_the_jagged_plains.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2016.01.13 02:01:35
    Script Purpose : 

        Zone       : Everfrost
        Quest Giver: Thyr Stormhammer
        Preceded by: Supplies for the Pioneers (Not a requirement though)
        Followed by: Peace with the Valkyries
--]]

function Init(Quest)
     AddQuestRewardCoin(Quest, math.random(20,60), math.random(30,90), math.random(3,5), 0)

     AddQuestStepLocation(Quest, 1,  "I need to survey one point in the Jagged Plains.", 30, "I need to hit a number of locations within the Jagged Plains to ensure that I have scouted the whole area.", 0, 125, 20, -422)
     AddQuestStepLocation(Quest, 2,  "I need to survey a second point in the Jagged Plains.", 30, "I need to hit a number of locations within the Jagged Plains to ensure that I have scouted the whole area.", 0, -41, 20, -380)
     AddQuestStepLocation(Quest, 3,  "I need to survey a third point in the Jagged Plains.", 30, "I need to hit a number of locations within the Jagged Plains to ensure that I have scouted the whole area.", 0, -132, 20, -465)
     AddQuestStepLocation(Quest, 4,  "I need to survey a fourth point in the Jagged Plains.", 30, "I need to hit a number of locations within the Jagged Plains to ensure that I have scouted the whole area.", 0, 47, 30, -510)
     AddQuestStepLocation(Quest, 5,  "I need to survey a fifth point in the Jagged Plains.", 30, "I need to hit a number of locations within the Jagged Plains to ensure that I have scouted the whole area.", 0, 130, 20, -651)
     AddQuestStepLocation(Quest, 6,  "I need to survey a sixth point in the Jagged Plains.", 30, "I need to hit a number of locations within the Jagged Plains to ensure that I have scouted the whole area.", 0, 79, 24, -633)

     AddQuestStepCompleteAction(Quest, 1, "Visited_Locations")

end

function Accepted(Quest, QuestGiver, Player)
    FaceTarget(QuestGiver, Player)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Sounds easy enough.")
    StartConversation(conversation, QuestGiver, Player, "Do a thorough sweep of the valley, and then return to me.")


end

function Declined(Quest, QuestGiver, Player)

end

function Visited_Locations(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have scouted the whole of the Jagged Plains, searching for a liveable space.")
    SetCompleteFlag(Quest)
    AddQuestStepChat(Quest, 2, "I need to speak with Thyr Stormhammer.", 1, "I need to return to Thyr Stormhammer at the Bitterwind Pioneer Camp and report what I have observed.", 0, 410068)
    AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)

end

function Reload(Quest, QuestGiver, Player, Step)

end

