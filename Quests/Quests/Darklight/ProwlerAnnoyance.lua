--[[
	Script Name		:	ProwlerAnnoyance.lua
	Script Purpose	:	Handles the quest, "Prowler Annoyance"
	Script Author	:	Cynnar
	Script Date		:	7/27/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Jhana Do'Zyth
	Preceded by		:	An Authority on Hate (AnAuthorityonHate.lua)
	Followed by		:	A Ferocious Inconvenience (AFerociousInconvenience.lua)
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill several dusk prowlers", 5, 100, "Jhana Do'Zyth has asked me to cull a number of the dusk prowlers found northeast of Hate's Envy.", 96, 340054)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain a number of dusk prowlers")

	AddQuestStepChat(Quest, 2, "Return to Jhana Do'Zyth", 1, "Jhana Do'Zyth has asked me to cull a number of the dusk prowlers found northeast of Hate's Envy.", 11, 340027)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have fulfilled Jhana's request by culling a number of dusk prowlers.")
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
	
	PlayFlavor(QuestGiver, "jhana_do_zyth/darklight_wood/hates_envy/jhana_revamp/jhana004.mp3", "", "", 2033106753, 62697825, Player)
	AddConversationOption(conversation, "I will return once the deed is done.")
	StartConversation(conversation, QuestGiver, Player, "Excellent, Ayeecaith. I eagerly await your return.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end