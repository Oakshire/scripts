--[[
    Script Name    : Quests/QeynosHarbor/letter_from_the_boss.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.13 11:06:57
    Script Purpose : 

        Zone       : QeynosHarbor
        Quest Giver: Shanda Tierbold
        Preceded by: None
        Followed by: 
--]]
function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must speak with Baily.", 1, "I should take this letter from Shanda and her boss to Baily Dowden in Nettleville.", 1223, 2330016)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
    UpdateQuestZone(Quest,"Nettleville")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
    PlayFlavor(QuestGiver, "", "", "agree", 0, 0, Spawn)	
    local conversation = CreateConversation()
	AddConversationOption(conversation, "I will see it safely to him.")
	StartConversation(conversation, QuestGiver, Player, "Good. Then take this letter over to Baily Dowden.  Now, my boss needs this letter to get to him right away.  I don't know why he gave me the letter to send, since I need to guard this door all day.  But he is the boss and he said to get it done and I shall.")
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
