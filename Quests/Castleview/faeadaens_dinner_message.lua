--[[
    Script Name    : Quests/Castleview/faeadaens_dinner_message.lua
    Script Author  : Zcoretri
    Script Date    : 2017.06.02 11:06:41
    Script Purpose : 

    Zone       : Castleview
    Quest Giver: Entertainer Faeadaen
    Preceded by: None
    Followed by: None
--]]

function Init(Quest)
    AddQuestStepChat(Quest, 1, "I must speak with Innkeeper Valean.", 1, "I need to deliver Faeadaen's message to Innkeeper Valean.", 11, 2360024)
    AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)

end

function quest_complete(Quest, QuestGiver, Player)
    -- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
    UpdateQuestStepDescription(Quest, 1, "I gave Innkeeper Valean the message.")
    UpdateQuestTaskGroupDescription(Quest, 1, "I gave Innkeeper Valean the message that Faeadaen won't be able to join him for dinner tonight.")

    UpdateQuestDescription(Quest, "I told Innkeeper Valean that Faeadaen could not make the dinner appointment. He understood that she had to work late.")
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
	QuestComplete(Quest, QuestGiver, Player)
    end
end

