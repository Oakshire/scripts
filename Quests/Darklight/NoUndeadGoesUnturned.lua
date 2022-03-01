--[[
	Script Name		:	Quests/Darklight/NoUndeadGoesUnturned.lua
	Script Purpose	:	Handles the quest, "No Undead Goes Unturned"
	Script Author	:	Cynnar
	Script Date		:	8/17/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Sselnyl Do'Zyth
	Preceded by		:	None
	Followed by		:	Thexian Taint
--]]

function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Retrieve the remains of the Thexian Dragoon-General.", 1, 100, "I must search the recently excavated tomb north of Hate's Envy for the remains of the Dragoon-General.", 91, 14386)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the remains of the Thexian Dragoon-General.")

	AddQuestStepChat(Quest, 2, "Bring the remains to Sselnyl", 1, "I must search the recently excavated tomb north of Hate's Envy for the remains of the Dragoon-General.", 11, 340021)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I found the remains of the Thexian Dragoon General and returned them to Sselnyl Do'Zyth, the mayor of Hate's Envy.")
	RemoveItem(Player, 14386)
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
	
	PlayFlavor(QuestGiver, "sselnyl_do_zyth/darklight_wood/hates_envy/sselnyl_revamp/sselnyl005.mp3", "", "", 2966552414, 1013655055, Player)
	AddConversationOption(conversation, "I will return shortly with the remains.")
	StartConversation(conversation, QuestGiver, Player, "With haste, " ..GetName(Player).. ".")
end

function Declined(Quest, QuestGiver, Player)
end