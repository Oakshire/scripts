--[[
    Script Name    : Quests/ThunderingSteppes/WatchyourstepinTheThunderingSteppesPartII.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.05 10:07:39
    Script Purpose : 

        Zone       : ThunderingSteppes
        Quest Giver: Jacques
        Preceded by: Watch your step in The Thundering Steppes, Part I
        Followed by: Watch your step in The Thundering Steppes, Part III
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to take this letter to Tish Tickers who resides in a watch tower in The Thundering Steppes.", 1, "Jacques has given me more mail to deliver, this time to a gnome named Tish Tickers by the third guard tower.", 11, 2490042)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have delivered the mail to Tish Tickers, but she will not give me the return mail until I have helped her.")

	AddQuestStep(Quest, 2, "To get the return mail from Tish I need to help her out.", 1, 100, "Tish can't give me the return mail until I help her gather the things she needs.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I helped Tish gather the things she needed.")

	AddQuestStepChat(Quest, 3, "Now that I have the return mail from Tish, I should take it to Jacques in The Thundering Steppes.", 1, "Now that I have the return mail from Tish Tickers, I need to take it to Jacques.", 11, 2490212)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(NPC, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, NPC, Player, "That's the spirit! Here, take this letter to a gnome named Tish Tickers at guard tower three. She's being harassed by a collection agency again. They sound pretty serious now. I can't wait to see what her excuse for not paying will be this time. Come back when you have her reply.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	end
end
