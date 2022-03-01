--[[
	Script Name		:	AFerociousInconvenience.lua
	Script Purpose	:	Handles the quest, "A Ferocious Inconvenience"
	Script Author	:	Cynnar
	Script Date		:	7/28/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Jhana Do'Zyth
	Preceded by		:	Prowler Annoyance
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill the ferocious wolf in western Hate's Envy.", 1, 100, "Jhana Do'Zyth wants me to kill the ferocious wolf in western Hate's Envy.", 611, 340057)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the ferocious wolf.")

	AddQuestStepChat(Quest, 2, "I need to return to Jhana.", 1, "Jhana Do'Zyth wants me to kill the ferocious wolf in western Hate's Envy.", 11, 340027)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I found the pack leader of the dusk prowlers inside the Thexian tomb and slew the beast.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "jhana_do_zyth/darklight_wood/hates_envy/jhana_revamp/jhana009.mp3", "", "", 1353883768, 3186153308, Player)
	AddConversationOption(conversation, "I will return victorious!")
	StartConversation(conversation, QuestGiver, Player, "I look forward to news of your victory.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end