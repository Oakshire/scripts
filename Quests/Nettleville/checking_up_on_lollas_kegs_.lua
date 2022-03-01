--[[
    Script Name    : Quests/Nettleville/checking_up_on_lollas_kegs_.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.21 05:01:42
    Script Purpose : 

        Zone       : Nettleville
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
    AddQuestStepChat(Quest, 1, "I need to find Zipiff Clamorclang.", 1, " I need to find Zipiff Clamorclang in the Baubbleshire and find out how Lolla's new kegs are coming along.", 0, 2380010)
    AddQuestStepCompleteAction(Quest, 1, "Delivery")
    	UpdateQuestZone(Quest, "Baubbleshire")
end

function Accepted(Quest, QuestGiver, Player)
  conversation = CreateConversation()
    PlayFlavor(QuestGiver,"","","ponder",0,0,Player)
    AddConversationOption(conversation, "I'll just be going now.")
    AddConversationOption(conversation, "Well, alright then.")
  StartConversation(conversation, QuestGiver, Player, "Great. Thanks. Now do I have enough glasses for...")
end   



function Declined(Quest, QuestGiver, Player)
end

function Delivery(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "	I found Zipiff Clamorclang.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found out the kegs are coming along nicely and should be ready soon.")

	AddQuestStepChat(Quest, 2, "I need to return to Lolla Cotgrove.", 1, "I need to let Lolla that the kegs are on schedule.", 0, 2330012)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
	UpdateQuestZone(Quest, "Nettleville")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've returned to Lolla.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned to Lolla and informed her about her ordered kegs.")

	UpdateQuestDescription(Quest, "I reported back to Lolla Cotgrove that her tinkered kegs are coming along well and should be ready soon. She was pleased with the news and paid me with with an interesting concoction of hers and a few coins.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Delivery(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
    end
end
