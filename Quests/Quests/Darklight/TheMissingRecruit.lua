--[[
	Script Name		:	Quests/Darklight/TheMissingRecruit.lua
	Script Purpose	:	Handles the quest, "The Missing Recruit"
	Script Author	:	Cynnat
	Script Date		:	8/30/2015
	Script Notes	:	Has 2 different versions.

	Zone			:	Darklight Wood
	Quest Giver		:	Ginwyss D'Arkenett
	Preceded by		:	A Guard Insignia?
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to search north of T'Vatar Outpost for Soltrin's corpse and his field kit.", 1, "Ginwyss D'Arkenett wants me to find the body of her recruit and retrieve his field kit.", 11) -- icon id 11
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have acquired the recruit's field kit.")

	AddQuestStepChat(Quest, 2, "I need to bring the field kit back to Ginwyss D'Arkenett.", 1, "Ginwyss D'Arkenett wants me to find the body of her recruit and retrieve his field kit.", 396, 340064) -- icon id 396
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	RemoveItem(Player, 13115)
	UpdateQuestDescription(Quest, "I have brought the recruit's field kit to Ginwyss.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "ginwyss_d_arkenett/darklight_wood/tvatar_post/ginwyss_revamp/ginwyss023.mp3", "", "", 3126616209, 364737454, Player)
	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, QuestGiver, Player, "I will see you when you return.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end