--[[
    Script Name    : Quests/ThunderingSteppes/WatchyourstepinTheThunderingSteppesPartI.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.05 10:07:30
    Script Purpose : 

        Zone       : ThunderingSteppes
        Quest Giver: Jacques
        Preceded by: None
        Followed by: Watch your step in The Thundering Steppes, Part II
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Jacques has hired me to deliver mail to Blerton Blumble on the docks of The Thundering Steppes.", 1, "I should deliver this letter to Blerton Blumble on the docks in The Thundering Steppes.", 185, 2490025)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Now that I have delivered this mail, I should get the return mail.")

	AddQuestStep(Quest, 2, "I must not return to Jacques until I have gotten the return mail from Blerton, and he won't give it to me until I have helped him.", 1, 100, "I should deliver this letter to Blerton Blumble on the docks in The Thundering Steppes.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end
	
function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have the return mail from Blerton.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have delivered the letter to Blerton. I am to pick up his mail also, but he will not give me the mail until I find his grandfather.")

	AddQuestStepChat(Quest, 3, "Now that I have the return mail from Blerton I should deliver it to Jacques.", 1, "I have delivered the Mail to Blerton, but he will not give me the return mail until I have helped him.", 11, 2490212)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, QuestGiver, Player, "For your first delivery, please take this letter to a halfling named Blerton Blumble. He can usually be found at the docks. It's from his cousin, Matsy. Now that you work for me, feel free to read any letters you deliver. I always do. It's just about the only fun to be found out here. After you've delivered it, bring me back any mail he has to send.")
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