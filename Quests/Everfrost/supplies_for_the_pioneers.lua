--[[
    Script Name    : Quests/Everfrost/supplies_for_the_pioneers.lua
    Script Author  : Flunklesnarkin
    Script Date    : 2015.11.29 01:11:25
    Script Purpose : 

        Zone       : Everfrost
        Quest Giver: Brahnagan MacLahnan
        Preceded by: Further Culling
        Followed by: Scouting the Jagged Plains
--]]

function Init(Quest)

     AddQuestRewardCoin(Quest, math.random(20,60), math.random(30,90), math.random(3,5), 0)

     AddQuestStepChat(Quest, 1, "I need to deliver the supplies to the pioneers in the Bitterwind Trench.", 1, "I have been given a box of supplies to deliver to the Bitterwind Trench Pioneer Encampment from Brahnagan MacLahnan.", 0, 410068)
     AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")

end

function Accepted(Quest, QuestGiver, Player)
    SummonItem(Player, 5642, 1)
    SetCompleteFlag(Quest)

    FaceTarget(QuestGiver, Player)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Thank you to you.")
    StartConversation(conversation, QuestGiver, Player, "Many thanks and best of luck to you in your journeys.")


end

function Declined(Quest, QuestGiver, Player)

end


function Reload(Quest, QuestGiver, Player, Step)

end

function Deleted(Quest, QuestGiver, Player)
     while HasItem(Player, 5642, 1) do
	  RemoveItem(Player, 5642)
     end
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have delivered the supplies to the pioneers.")
	while HasItem(Player, 5642, 1) do
		RemoveItem(Player, 5642)
	end
	GiveQuestReward(Quest, Player)
end

