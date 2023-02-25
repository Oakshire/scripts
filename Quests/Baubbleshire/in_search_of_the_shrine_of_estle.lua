--[[
    Script Name    : Quests/Baubbleshire/in_search_of_the_shrine_of_estle.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.19 04:01:12
    Script Purpose : 

        Zone       : Baubbleshire
        Quest Giver: Mirf Guinders
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
    UpdateQuestZone(Quest, "Down Below")	
	AddQuestStepLocation(Quest, 1, "I will find the shrine in the Down Below.", 5, "I need to locate the Shrine of Estle in the Down Below.", 0, 7.12, 0.3, -137.86, 834)
	AddQuestStepCompleteAction(Quest, 1, "FoundTemple")
end

function Accepted(Quest, QuestGiver, Player)
local conversation = CreateConversation()
FaceTarget(QuestGiver, Player)
AddConversationOption(conversation, "Sorry to cut you off, but the Down Below beckons.")
StartConversation(conversation, QuestGiver, Player, "Deep down in the catacombs there are many shrines to protect the fallen - the heroes of Bristlebane and Rodcet Nife - who carried Qeynos through trials and tribulations, who fought hordes of undead, who...")
PlayAnimation (NPC, orate)
end

function Declined(Quest, QuestGiver, Player)

end

function FoundTemple(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I located the Shrine of Estle.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the shrine in the Down Below.")
	
	UpdateQuestZone(Quest, "Baubbleshire")	
	AddQuestStepChat(Quest, 2, "I should return to Mirf Guinders.", 1, "Mirf Guinders will want to know what I've seen.", 0, 2380029)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've returned to Mirf Guinders.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've told Mirf Guinders about the Temple of Estle.")

	UpdateQuestDescription(Quest, "I discovered the location of the Shrine of Estle within the Down Below. Having relayed this information to Mirf Guinders he has paid me for my service.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		FoundTemple(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
    end
end

