--[[
	Script Name	: Quests/Nettleville/a_budding_hunter.lua
	Script Purpose	: Handles the quest, "A Budding Hunter"
	Script Author	: Scatman
	Script Date	: 2009.08.10
	
	Zone       : Nettleville
	Quest Giver: Johfrit Gythell
	Preceded by: Crate and Barrel (crate_and_barrel.lua)
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Lieutenant Dawson.", 1, "I need to find Lieutenant Dawson in the Peat Bog and see if she has work for me.", 0, 1980012) 
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/johfrit_gythell/qey_village01/johfritgythell014.mp3", "", "", 2903854914, 2874917494, Player)
	AddConversationOption(conversation, "Hmm.  Thank you.")
	StartConversation(conversation, QuestGiver, Player, "Lieutenant Dawson in the Peat Bog is always recruiting hands to help.  She gives 'honest' work.")
end

function Declined(Quest, QuestGiver, Player)
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Lieutenant Dawson.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found Lieutenant Dawson.")
	UpdateQuestDescription(Quest, "I have spoken to Lieutenant Dawson.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end