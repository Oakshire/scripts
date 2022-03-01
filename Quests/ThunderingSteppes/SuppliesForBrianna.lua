--[[
    Script Name    : Quests/ThunderingSteppes/SuppliesForBrianna.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.11 02:07:46
    Script Purpose : 

        Zone       : ThunderingSteppes
        Quest Giver: Brianna (2490170)
        Preceded by: Watch Your Step in the Thundering Steppes, Part III
        Followed by: Hides for Brianna
--]]

function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "I need to get five Tin Long Swords for Brianna since I lost the original ones.", 5, 100, "I need to make the replacement items that Brianna needs.", 656, 89137)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have the items that Brianna needs now.")

	AddQuestStepChat(Quest, 2, "I need to give Brianna the five Tin Long Swords.", 1, "Now that I have all the items that Brianna needs, I should return them to her in The Thundering Steppes.", 654, 2490170)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Thank you for being so generous.")
	StartConversation(conversation, NPC, Spawn, "Well here it looks like 5 Forged Tin Long Swords were damaged. I am going to need you either to buy me some new ones or make them for me. Why don't I keep this delivery receipt until you bring them to me, so I know you will return.")
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
	end
end