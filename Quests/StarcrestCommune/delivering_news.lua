--[[
	Script Name		:	Quests/StarcrestCommune/delivering_news.lua
	Script Purpose	:	Handles the quest, "Delivering News"
	Script Author	:	Jabantiz
	Script Date		:	6/15/2018
	Script Notes	:	

	Zone			:	Starcrest Commune
	Quest Giver		:	Maareona Ludimintium (2340006)
	Preceded by		:	Confrontation (confrontation.lua)
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Rujiarmo Oolamein in the Peat Bog.", 1, "Maareona has asked that I speak with Rujiarmo Oolamein in the Peat Bog.", 11, 1980024)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Rujiarmo Oolamein.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Rujiarmo as Maareona asked.")

	UpdateQuestDescription(Quest, "I have found Rujiarmo Oolamein and delivered the news.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/maareona_ludimintium/qey_village02/quests/maareona/maareona036a.mp3", "", "", 625407969, 2282669599, Player)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, QuestGiver, Player, "One more thing, " .. GetName(Player) .. ". It was nice working with you.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
end