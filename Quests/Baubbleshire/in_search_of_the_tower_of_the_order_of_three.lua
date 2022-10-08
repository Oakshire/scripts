--[[
    Script Name    : Quests/Baubbleshire/in_search_of_the_tower_of_the_order_of_three.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.19 01:01:28
    Script Purpose : 

        Zone       : Baubbleshire
        Quest Giver: Algan Tinmizer
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to locate the mage tower ruins.", 5, "I need to locate the mage tower ruins in the Forest Ruins.", 0, 1117.56, -9.25, -760.03, 196)
	AddQuestStepCompleteAction(Quest, 1, "TowerRuins")
	UpdateQuestZone(Quest, "The Forest Ruins")
end

function Accepted(Quest, QuestGiver, Player)
 	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()


	AddConversationOption(conversation, "I'll be back shortly, I hope.")
	StartConversation(conversation, QuestGiver, Player, "Good! I can't wait to hear about it!")
    PlayFlavor(QuestGiver, "","","clap",0,0,Player)
end

function Declined(Quest, QuestGiver, Player)

end

function quest_complete(Quest, QuestGiver, Player)

end

function TowerRuins(Quest, QuestGiver,Player)
	UpdateQuestStepDescription(Quest, 1, "I found the mage tower ruins.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I located the mage tower ruins.")

	UpdateQuestZone(Quest, "Baubbleshire")
	AddQuestStepChat(Quest, 2, "I need to inform Algan Tinmizer", 1, "I need to return and speak with Algan Tinmizer.", 0, 2380037)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have told Algan Tinmizer.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to speak to Algan Tinmizer.")

	UpdateQuestDescription(Quest, "I discovered the location of the ancient ruins of the Order of Three. This information was passed on to Algan Tinmizer of Baubbleshire who in turn paid me for my service.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		TowerRuins(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)	    
end
end
