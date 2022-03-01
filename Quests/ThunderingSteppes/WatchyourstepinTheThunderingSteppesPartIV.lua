--[[
    Script Name    : Quests/ThunderingSteppes/WatchyourstepinTheThunderingSteppesPartIV.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.05 10:07:48
    Script Purpose : 

        Zone       : ThunderingSteppes
        Quest Giver: Jacques (2490212)
        Preceded by: Watch your step in The Thundering Steppes Part IV
        Followed by: 
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I am to deliver the mail to Deputy Nettlebrine in The Enchanted Lands.", 1, "My mail delivery job is about over, and my final task is to deliver a letter to Deputy Nettlebrine in The Enchanted Lands.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Ok, I will do it for you then.")
	StartConversation(conversation, NPC, Spawn, "This letter needs to go out to Deputy Nettlebrine in The Enchanted Lands. I would take it myself, but after my last trip on a boat I think its best that I don't.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	end
end