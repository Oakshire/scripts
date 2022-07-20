--[[
	Script Name	: SpawnScripts/Longshadow/KylanithDLar.lua
	Script Purpose	: Kylanith D`Lar 
	Script Author	: John Adams
	Script Date	: 2008.09.29 (20.7.2022 by torsten)
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local TheStolenArtifactsofThex = 5683

function spawn(NPC)
    ProvidesQuest(NPC, TheStolenArtifactsofThex)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if GetQuestStep(Spawn, TheStolenArtifactsofThex) == 5 then
	    FaceTarget(NPC, Spawn)
	    SetStepComplete(Spawn, TheStolenArtifactsofThex, 5)
    end
	if GetQuestStep(Spawn, TheStolenArtifactsofThex) == 7 then
        SetStepComplete(Spawn, TheStolenArtifactsofThex, 7)
    end
    if not HasQuest(Spawn, TheStolenArtifactsofThex) and not HasCompletedQuest(Spawn, TheStolenArtifactsofThex) then
	    PlayFlavor(NPC, "voiceover/english/optional1/kylanith_d_lar/fprt_hood05/qst_kylanith_hail.mp3", "", "", 387692981, 2731095766, Spawn)
	    AddConversationOption(conversation, "I cannot chat now. Farewell.")
	    AddConversationOption(conversation, "Freeport is strong! Qeynos is weak!", "dlg_10_1")
	    StartConversation(conversation, NPC, Spawn, "They call this the Age of Destiny. It's the age of someone's or some empire's claim to destiny. The world is in ruins. And now here we are, in Freeport, begging for acceptance and the embrace of its mighty walls.")
    else
	    PlayFlavor(NPC, "voiceover/english/optional1/kylanith_d_lar/fprt_hood05/qst_kylanith_hail.mp3", "", "", 387692981, 2731095766, Spawn)
	    AddConversationOption(conversation, "I cannot chat now. Farewell.")
	    StartConversation(conversation, NPC, Spawn, "They call this the Age of Destiny. It's the age of someone's or some empire's claim to destiny. The world is in ruins. And now here we are, in Freeport, begging for acceptance and the embrace of its mighty walls.")
    end    
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/kylanith_d_lar/fprt_hood05/quests/kylanithdlar/kylanith_lore_01.mp3", "", "", 1570701615, 3622138466, Spawn)
	AddConversationOption(conversation, "Careful! Do not speak the Overlord's name or we shall both die!", "dlg_10_2")
	AddConversationOption(conversation, "I cannot chat now. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Qeynos or Freeport? There was no choice for my kind. The Antonicans fear the greatness of the Teir'Dal. And the Overlord? I believe he knows he cannot rule us, but better to keep an eye on us than let us claim our destiny.  We only exist within Longshadow Alley by the will of the Foci, not Lucan!")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/kylanith_d_lar/fprt_hood05/quests/kylanithdlar/kylanith_lore_02.mp3", "", "", 1956578837, 2860993398, Spawn)
	AddConversationOption(conversation, "What grandeur?", "dlg_10_3")
	AddConversationOption(conversation, "I cannot chat now. Farewell.")
	StartConversation(conversation, NPC, Spawn, "I would rather welcome death than give Lucan allegiance! To those who bask in the light, we have done little more than pose a threat to their existence. He and his puppet they call Foci will tremble when Neriak roars again! Our past grandeur shall rise again.")
end

function dlg_10_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/kylanith_d_lar/fprt_hood05/quests/kylanithdlar/kylanith_lore_03.mp3", "", "", 4093915268, 1190295502, Spawn)
	AddConversationOption(conversation, "What happened to Neriak?", "dlg_10_4")
	AddConversationOption(conversation, "I cannot chat now. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The grandeur of an empire that spans greater than the Shattered Lands. An empire that has existed longer than man or elf ruled these lands. All that most know of us is a city called Neriak, never knowing truth.")
end

function dlg_10_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/kylanith_d_lar/fprt_hood05/quests/kylanithdlar/kylanith_lore_09.mp3", "", "", 1273569291, 3869823159, Spawn)
	AddConversationOption(conversation, "What relics?", "dlg_10_5")
	AddConversationOption(conversation, "I cannot chat now. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Many say it has been consumed by the Underfoot that once sheltered it. Crushed under the weight of the falling surface as quakes rend this land asunder, creating what we now know as the Shattered Lands. We know only of the relics that remain.")
end

function dlg_10_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/kylanith_d_lar/fprt_hood05/quests/kylanithdlar/kylanith_lore_10.mp3", "", "", 1404555822, 3452180553, Spawn)
	AddConversationOption(conversation, "Where can I find these relics in Freeport?", "dlg_10_6")
	AddConversationOption(conversation, "I cannot chat now. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The Ashlands, or should I say, Nektulos? That was once the surface territory of the dark elf empire. It is littered with remnants of that ancient occupation. Even here in Freeport you can find dark elf artifacts.")
end

function dlg_10_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/kylanith_d_lar/fprt_hood05/quests/kylanithdlar/kylanith_lore_11.mp3", "", "", 568372124, 1694164407, Spawn)
	AddConversationOption(conversation, "I can find the five artifacts.", "dlg_10_7")
	AddConversationOption(conversation, "I cannot chat now. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Gossip is circulating that within the walls of Freeport our ancient allies have betrayed us yet again! The wretched oafs of Big Bend have claimed five artifacts of Thexian past. I must know if this is true!")
end

function dlg_10_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/kylanith_d_lar/language/thexian/lan_5_kylanith_x1_initial01.mp3", "", "", 2884704375, 1873644890, Spawn)
	AddConversationOption(conversation, "I will find them and report back.", "dlg_10_8")
	StartConversation(conversation, NPC, Spawn, "It is rumored that the artifacts are somewhere within Big Bend's foul-stenching streets. Some artifacts have sustained great damage. Find them for me and report their existence. ")
	OfferQuest(NPC, Spawn, TheStolenArtifactsofThex)
end

