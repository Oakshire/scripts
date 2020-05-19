--[[
	Script Name		:	UnfortunateMistakes.lua
	Script Purpose	:	Handles the quest, "Unfortunate Mistakes"
	Script Author	:	Jabantiz
	Script Date		:	6/11/2018
	Script Notes	:	

	Zone			:	Nettleville
	Quest Giver		:	
	Preceded by		:	Required Components (required_components.lua)
	Followed by		:	To the Source (to_the_source.lua)
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must stop the Pa'Rok ritual.", 1, "I need to stop the Pa'Rok ritual before something bad happens. I should check the three locations I originally gathered dirt from.", 11, 2330065)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I did not stop the ceremony, but I did stop the corrupted spirit that was inadvertently summoned and learned where the contaminated soil came from.")
	
	AddQuestStepChat(Quest, 2, "I should return to Lakosha Maera and tell her the news.", 1, "I need to stop the Pa'Rok ritual before something bad happens. I should check the three locations I originally gathered dirt from.", 11, 2330053)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Lakosha Maera.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found out who was attempting the Pa'Rok ritual.")

	UpdateQuestDescription(Quest, "I found the person attempting the Pa'Rok ritual. I was too late to stop the ritual, but I did prevent the spirit that was summoned from harming anyone.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lakosha_maera/qey_village01/quests/lakosha_maera/lakosha_maera019a.mp3", "", "", 3555353396, 4246766258, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, QuestGiver, Player, "Go quicky, and good luck.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
end