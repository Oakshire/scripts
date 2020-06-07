--[[
	Script Name	: Quests/TheSprawl/heading_into_the_ruins.lua
	Script Purpose	: Handles the quest, "Heading into the Ruins"
	Script Author	: Scatman
	Script Date	    : 2009.07.26
	
	Zone       : The Sprawl
	Quest Giver: Enforcer Kurdek
	Preceded by: Dominating the Dervish (dominating_the_dervish.lua)
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must make my way to the Freeport Ruins and speak to Captain Arellius. I should return to the docks of my home district and use the bell to summon transport outside of Freeport proper.", 1, "I should make my way to the Ruins and speak to to Captain Arellius.", 0, 1270000)
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek043.mp3", "", "", 1861012696, 1699746787, Player)
	AddConversationOption(conversation, "How should I get there?", "dlg_32_4")
	StartConversation(conversation, QuestGiver, Player, "Don't linger here too long, adventurer. I just got word of something major happening in the Ruins of old Freeport. You need to get there as soon as possible and lend a hand in defending the city.")
end

function Declined(Quest, QuestGiver, Player)
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I made my way to the Ruins and have spoken to Captain Arellius.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found Captain Arellius in the Ruins.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I found the Ruins and have reported to Captain Arellius. I will now see what duties she needs me to perform.")
end

function Reload(Quest, QuestGiver, Player)
end