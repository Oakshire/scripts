--[[
	Script Name	: Quests/SunkenCity/searching_for_the_ruins.lua
	Script Purpose	: Handles the quest, "Searching for the Ruins"
	Script Author	: Scatman
	Script Date	    : 2009.07.28
	
	Zone       : Sunken City
	Quest Giver: Inquisitor Thorson
	Preceded by: Time to Stop a Madman (time_to_stop_a_madman.lua)
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should make my way to the Freeport Ruins and speak to Captain Arellius.", 1, "I should go to the Ruins and speak to Captain Arellius.", 0, 1270003)
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "How do I get there?", "dlg_24_3")
	AddConversationOption(conversation, "I'm leaving.")
	StartConversation(conversation, QuestGiver, Player, "I must remain here to finish my report for the Dismal Rage. However, I would like you to journey to the Freeport Ruins and seek out an acquaintance of mine named Captain Arellius. I have heard that your help is much needed there. I will send word that you are coming, hero of Freeport.")
end

function dlg_24_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/inquisitor_thorson049.mp3", "", "", 3163252250, 288796806, Spawn)
	AddConversationOption(conversation, "Are there any other places you could recommend where I can find adventures?", "dlg_24_4")
	AddConversationOption(conversation, "Thank you, Inquisitor Thorson. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The fastest route to the Ruins is to use the mariner's bell at the end of the dock for traveling outside the city proper. This will summon transportation to take you to the Ruins, where Captain Arellius of the Freeport Militia will be awaiting your assistance.")
end

function dlg_24_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/inquisitor_thorson061.mp3", "", "", 2845086086, 1715171802, Spawn)
	AddConversationOption(conversation, "Tell me more about Custodian Zaddar.", "dlg_24_5")
	AddConversationOption(conversation, "Tell me more about Enforcer Kurdek.", "dlg_24_6")
	AddConversationOption(conversation, "I may seek them out. Thank you.")
	StartConversation(conversation, NPC, Spawn, "You can speak to Custodian Zaddar in the Graveyard and Enforcer Kurdek in the Sprawl. They could both use assistance from an able adventurer.")
end

function dlg_24_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/inquisitor_thorson062.mp3", "", "", 4025975768, 1084751097, Spawn)
	AddConversationOption(conversation, "Tell me more about Enforcer Kurdek.", "dlg_24_6")
	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "Custodian Zaddar in the Graveyard is trying to determine what's behind a recent increase in undead attacks. Use the mariner's bell on the docks of your home district to travel to Stonestair Byway. Head west until you see a passage to the south. The gate at the end leads to the Graveyard.")
end

function dlg_24_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/inquisitor_thorson/fprt_adv01_sunken/inquisitor_thorson063.mp3", "", "", 3377387482, 1184471101, Spawn)
	AddConversationOption(conversation, "Tell me more about Custodian Zaddar.", "dlg_24_5")
	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "Enforcer Kurdek in the Sprawl could use a hand keeping the local gangs in line. To journey to the Sprawl, use the mariner's bell on the docks of your home district to travel to Big Bend. Follow the halls north, then take the west passageway to the west gate.")
end

function Declined(Quest, QuestGiver, Player)
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken to Captain Arellius in the Ruins.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken to Captain Arellius.")
	GiveQuestReward(Quest, Player)
	UpdateQuestDescription(Quest, "I found the Ruins and have reported to Captain Arellius. I will now see what duties she needs me to perform.")
end

function Reload(Quest, QuestGiver, Player, Step)
end