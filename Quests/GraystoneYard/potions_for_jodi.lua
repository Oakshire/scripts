--[[
    Script Name    : Quests/GraystoneYard/potions_for_jodi.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.21 01:01:42
    Script Purpose : 

        Zone       : GraystoneYard
        Quest Giver: Jodi
        Preceded by: None
        Followed by: 
--]]
function Init(Quest)
    AddQuestStepChat(Quest, 1, "I must speak to Dondl Fuzzlecutte.", 1, "I must go to Baubbleshire and speak with Fuzzlecutter.", 10, 2380048)
    AddQuestStepCompleteAction(Quest, 1, "Delivery")
    	UpdateQuestZone(Quest, "Baubbleshire")
end

function Accepted(Quest, QuestGiver, Player)
  conversation = CreateConversation()
      PlayFlavor(QuestGiver,"","","thank",0,0,Player)
  AddConversationOption(conversation, "It is bound to move eventually. I'll be back.")
  StartConversation(conversation, QuestGiver, Player, "You are doing me a huge favor! I don't want to lose my place in line.")
end   



function Declined(Quest, QuestGiver, Player)
    PlayFlavor(QuestGiver,"","Fine. I'll just wait here a little longer.","sigh",0,0,Player)
end

function Delivery(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke to Fuzzlecutter")
	UpdateQuestTaskGroupDescription(Quest, 1, "I spoke to Fuzzlecutter in Baubbleshire.")

	AddQuestStepChat(Quest, 2, "I need to return to Jodi.", 1, "I need to return to Jodi with her potions and leftover change.", 358, 2350022)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
	UpdateQuestZone(Quest, "Graystone Yard")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've returned to Jodi.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've given Jodi her potions she needed picking up.")

	UpdateQuestDescription(Quest, "I delivered Fuzzlecutter's potions to Jodi in Graystone. She was very thankful and allowed me to keep the change.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Delivery(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
    end
end
