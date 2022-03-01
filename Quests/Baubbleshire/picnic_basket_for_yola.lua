--[[
    Script Name    : Quests/Baubbleshire/picnic_basket_for_yola.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.19 04:01:42
    Script Purpose : 

        Zone       : Baubbleshire
        Quest Giver: Tapster Bregun
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
    AddQuestStepChat(Quest, 1, "I need to deliver a basket to Yola.", 1, "I need to deliver a picnic basket to Yola over by the pond.", 2695, 2380032)
    AddQuestStepCompleteAction(Quest, 1, "Delivery")
end

function Accepted(Quest, QuestGiver, Player)
  conversation = CreateConversation()
      PlayFlavor(QuestGiver,"","","nod",0,0,Player)
  AddConversationOption(conversation, "I'll dash right over.")
  StartConversation(conversation, QuestGiver, Player, "Great, let me know when you get done with that delivery!")
end   



function Declined(Quest, QuestGiver, Player)

end

function Delivery(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I delievered Yola's food order.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I delivered the picnic basket to Yola Sindlefop.")

	AddQuestStepChat(Quest, 2, "I need to return to Bregun.", 1, "Tapster Bregun will be happy to know I delivered Yola's food.", 0, 2380028)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've returned to Bregun.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned to Bregun after a successful delivery.")

	UpdateQuestDescription(Quest, "I delivered the picnic basket to Yola over at the pond. She was quite happy with the delivery, and Bregun was pleased when I came back.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Delivery(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
    end
end
