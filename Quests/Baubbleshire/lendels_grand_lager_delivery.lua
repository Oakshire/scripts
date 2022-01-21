--[[
    Script Name    : Quests/Baubbleshire/lendels_grand_lager_delivery.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.20 04:01:48
    Script Purpose : 

        Zone       : Baubbleshire
        Quest Giver: Kaldin Deeppockets
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
    AddQuestStepChat(Quest, 1, "I need to find Coppershot.", 1, " I need to speak to Bartender Coppershot in Graystone Yard.", 310, 2350038)
    AddQuestStepCompleteAction(Quest, 1, "Delivery")
    	UpdateQuestZone(Quest, "Graystone Yard")
end

function Accepted(Quest, QuestGiver, Player)
  conversation = CreateConversation()
      PlayFlavor(QuestGiver,"","","hello",0,0,Player)
  AddConversationOption(conversation, "Alright, I'll be back soon.")
  StartConversation(conversation, QuestGiver, Player, "No sampling on the way! If ya know what I mean.")
end   



function Declined(Quest, QuestGiver, Player)
end

function Delivery(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke to Coppershot.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I gave Coppershot the jug of Lendel's Grand Lager.")

	AddQuestStepChat(Quest, 2, "I need to return to Kaldin Deeppockets.", 1, "This old stein should be a nice surprise for Kaldin.", 3196, 2380031)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
	UpdateQuestZone(Quest, "Baubbleshire")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've returned to Kaldin.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned to Kaldin and gave him the Rivervale stein.")

	UpdateQuestDescription(Quest, "I delivered the jug of Lendel's Grand Lager to Bartender Coppershot in Graystone. He then had me deliver a Fool's Gold stein to Barkeep Deeppockets. He was very pleased with the stein and paid me for my service.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Delivery(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
    end
end
