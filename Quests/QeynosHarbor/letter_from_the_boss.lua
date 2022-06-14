--[[
    Script Name    : Quests/QeynosHarbor/letter_from_the_boss.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.13 11:06:57
    Script Purpose : 

        Zone       : QeynosHarbor
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must speak with Baily.", 1, "I should take this letter from Shanda and her boss to Baily Dowden in Nettleville.", 1223, 2330016)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
    PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Spawn)	
    local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll make sure he gets it.")
	StartConversation(conversation, QuestGiver, Player, "Fine.  If you're really looking to make yourself useful, deliver this to Baily Dowden in Nettleville.  He's the landlord there and has been expecting this payment information for some time.  The envelope is sealed, so don't even think of tampering with it!")
end	

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Baily.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have taken the letter from Shanda and her boss over to Baily Dowden.")

	UpdateQuestDescription(Quest, "I have done my job for Shanda and her boss by delivering a letter to Baily Dowden.  After talking with Baily Dowden I'm still not sure what it was about but I was given some coin and ale for my hard work.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
