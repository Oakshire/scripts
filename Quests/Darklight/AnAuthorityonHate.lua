--[[
	Script Name		:	Quests/Darklight/AnAuthorityonHate.lua
	Script Purpose	:	Handles the quest, "An Authority on Hate"
	Script Author	:	Cynnar
	Script Date		:	7/27/2015
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	Pellandra D'Xatyl
	Preceded by		:	Reclaiming the Sablevein Tear (ReclaimingtheSableveinTear.lua)
	Followed by		:	Prowler Annoyance (ProwlerAnnoyance.lua)
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak with Jhana Do'Zyth inside Hate's Envy Townhall", 1, "I need to enter Hate's Envy Townhall and speak with the mayor's daughter, Jhana Do'Zyth.", 11, 340027)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I entered Hate's Envy Town Hall and spoke with the mayor's daughter, Jhana Do'Zyth.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "pellandra_d_xatyl/darklight_wood/hates_envy/pellandra_revamp/pellandra026.mp3", "", "bow", 3700065629, 2247447219, Player)
	AddConversationOption(conversation, "Praise Innoruuk!")
	StartConversation(conversation, QuestGiver, Player, "You fight well, " .. GetName(Player) .. ". May your enemies come to know your name and fear it. The Dark Father looks upon you favorably.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end