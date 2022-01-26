--[[
    Script Name    : Quests/CastleviewHamlet/bupipas_new_amplificator.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.25 06:01:55
    Script Purpose : 

        Zone       : CastleviewHamlet
        Quest Giver: Bupipa Guryup
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
    AddQuestStepChat(Quest, 1, "I need to exchange the bill of sale for the order.", 1, "I need to exchange this bill of sale for Bupipa's tinker order at Bizrinn Clamorclang's shop in the Baubbleshire.", 75, 2380041)
    AddQuestStepCompleteAction(Quest, 1, "Pickup")
    	UpdateQuestZone(Quest, "Baubbleshire")
end

function Accepted(Quest, QuestGiver, Player)
  conversation = CreateConversation()
      PlayFlavor(QuestGiver,"","","thank",0,0,Player)
  AddConversationOption(conversation, "I will return!")
    AddConversationOption(conversation, "...I'll be going now.")
  StartConversation(conversation, QuestGiver, Player, "Oh, please do I hurry. I wish to sing for the whole world to hear! FORAK!")
end   



function Declined(Quest, QuestGiver, Player)
end

function Pickup(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I gave the bill of sale to Bizrinn")
	UpdateQuestTaskGroupDescription(Quest, 1, "I gave Bizrinn Clamorclang the bill of sale in exchange for the Sonance Volume Amplificator.")
	
	UpdateQuestZone(Quest, "Castleview Hamlet")
	AddQuestStepChat(Quest, 2, "I need to return to Bupipa Guryup.", 1, "Bupipa Guryup is expecting this device. I should take it to her.", 3150, 2360008)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")

end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've returned to Bupipa.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave Bupipa the Sonance Volume Amplificator.")

	UpdateQuestDescription(Quest, "I delivered the new Sonance Volume Amplificator to Bupipa and she paid me for the delivery. I hope the village of Castleview can forgive me if she ever gets it set up...")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Pickup(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
    end
end
