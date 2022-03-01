--[[
    Script Name    : Quests/Baubbleshire/a_tattered_journal_for_valean.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.20 04:01:29
    Script Purpose : 

        Zone       : Baubbleshire
        Quest Giver: Ganla Dindlenod
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
    AddQuestStepChat(Quest, 1, " I must go to Innkeeper Valean.", 1, "I must find Innkeeper Valean in Castleview Hamlet.", 53227, 2360024)
    AddQuestStepCompleteAction(Quest, 1, "Delivery")
    	UpdateQuestZone(Quest, "Castleview Hamlet")
end

function Accepted(Quest, QuestGiver, Player)
  conversation = CreateConversation()
      PlayFlavor(QuestGiver,"","","thank",0,0,Player)
  AddConversationOption(conversation, "I'll let you know as soon as I deliever it.")
  StartConversation(conversation, QuestGiver, Player, "Hold it carefully! The pages are in rough enough shape as it is.")
end   



function Declined(Quest, QuestGiver, Player)
end

function Delivery(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found Innkeeper Valean.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I delivered the tattered journal to Innkeeper Valean.")

	AddQuestStepChat(Quest, 2, "I need to return to Ganla Dindlenod.", 1, "Ganla Dindlenod will want to know Valean now has the book.", 0, 2380022)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
	UpdateQuestZone(Quest, "Baubbleshire")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've returned to Ganla.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned to Ganla and updated her on her book.")

	UpdateQuestDescription(Quest, "I delivered the tattered journal to Innkeeper Valean. I then informed Ganla Dindlenod that it will take some time to decipher the words. She was thankful and paid me for the deed.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Delivery(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
    end
end
