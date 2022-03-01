--[[
	Script Name	: SpawnScripts/Castleview/SirAntylusTeraeth.lua
	Script Purpose	: Sir Antylus Teraeth 
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/sir_antylus_teraeth/qey_village04/antylus_teraeth000.mp3", "", "", 2410300960, 837808802)
	AddConversationOption(conversation, "Who are the Priests of Life? ", "dlg_4_1")
	AddConversationOption(conversation, "Thanks for your words, but I must go now.")
	StartConversation(conversation, NPC, Spawn, "Another beautiful day in the city of Qeynos!  As the Priests of Life would say, 'The light of life shines bright upon Qeynos.'  ")

end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/sir_antylus_teraeth/qey_village04/antylus_teraeth001.mp3", "", "", 3149606154, 2024355118)
	AddConversationOption(conversation, "What is the Crusade of the Fallen?", "dlg_4_2")
	AddConversationOption(conversation, "I am more concerned with Qeynos present. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Friends of mine from my past, a benevolent order of Qeynos yore.  I marched with them on the Crusade of the Fallen. ")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/sir_antylus_teraeth/qey_village04/antylus_teraeth002.mp3", "", "", 663436168, 3617497960)
	AddConversationOption(conversation, "I wish to hear this tale. ", "dlg_4_3")
	AddConversationOption(conversation, "I am sorry. I have no time for the tale. ")
	StartConversation(conversation, NPC, Spawn, "You never heard of the Crusade of the Fallen?  Oh my!  It was, perhaps, the finest moment for the Priests of Life.  It's a simple tale of respect and honor. ")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/sir_antylus_teraeth/qey_village04/antylus_teraeth003.mp3", "", "", 3201920823, 1156394229)
	AddConversationOption(conversation, "So many deaths. How sad. ", "dlg_4_6")
	AddConversationOption(conversation, "You are not a Qeynosian?", "dlg_4_4")
	AddConversationOption(conversation, "I must leave now. Farewell.")
	StartConversation(conversation, NPC, Spawn, "It began with the Shattering, when a reign of fire from the death throes of the moon Luclin barraged Norrath.  Millions died in this apocalyptic fury.  Bodies littered the land.  Even the royal family of Bayle could not escape this violence.  My new home was battered and its people nearly all lost.  ")
end

function dlg_4_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/sir_antylus_teraeth/qey_village04/antylus_teraeth010.mp3", "", "", 3512678812, 1974187666)
	AddConversationOption(conversation, "What of the Crusade of the Fallen?", "dlg_4_6")
	AddConversationOption(conversation, "What is Felwithe?", "dlg_4_5")
	AddConversationOption(conversation, "I must leave now. Farewell.")
	StartConversation(conversation, NPC, Spawn, "No.  I'm a citizen of the halls of Felwithe, a place I departed more than 150-years ago, near the start of the Age of Cataclysms.  My only goal was to find the lost city of Fayspire, but the oceans became violent and impassable.  I couldn't turn back, so I trekked on in my search.")
end

function dlg_4_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/sir_antylus_teraeth/qey_village04/antylus_teraeth011.mp3", "", "", 903203081, 3867676461)
	AddConversationOption(conversation, "But the city was in ruins.", "dlg_4_6")
	StartConversation(conversation, NPC, Spawn, "Felwithe was the home of my people, the Koada'Dal!  Our grand city sat high atop the clouds where the sun always shined.  It rests many leagues away on the continent of Faydwer.  I do miss my city in the clouds, but Qeynos has embraced me and is my new sanctuary from the violence of this world.")
end

function dlg_4_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/sir_antylus_teraeth/qey_village04/antylus_teraeth004.mp3", "", "", 1716743258, 3118361328)
	AddConversationOption(conversation, "How long did this horror last?", "dlg_4_7")
	AddConversationOption(conversation, "I thank you for the tale. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Qeynos lay in rubble, and its kingdom, which spread across the horizon, was littered with the bodies of those who couldn't escape the torment of the land.  Such carnage brought disease and scavengers to plague the lands.   ")
end

function dlg_4_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/sir_antylus_teraeth/qey_village04/antylus_teraeth005.mp3", "", "", 360171820, 1225175245)
	AddConversationOption(conversation, "But you mentioned the Priests of Life.", "dlg_4_8")
	AddConversationOption(conversation, "I must leave now. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The horror of fields of the fallen could not be cleansed.  Most of the kingdom lay in rubble.  Outland residents flooded in and aided with the reconstruction of the great city.  When this was complete, and the army was replenished, then the time was right to clear the ravaged countryside and all its chaos.")
end

function dlg_4_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/sir_antylus_teraeth/qey_village04/antylus_teraeth006.mp3", "", "", 1680809797, 715676428)
	AddConversationOption(conversation, "Why did they want to gather the bodies?", "dlg_4_9")
	StartConversation(conversation, NPC, Spawn, "The Priests of Life, defenders of all souls.  Their numbers were small.  They took many losses, but still, they rose to march.  They traveled the lands gathering forgotten souls.  I was in awe of their humble valor.  So taken was I, that I joined their crusade. ")
end

function dlg_4_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/sir_antylus_teraeth/qey_village04/antylus_teraeth007.mp3", "", "", 1110308997, 819506069)
	AddConversationOption(conversation, "What did they do with all the bodies?", "dlg_4_10")
	AddConversationOption(conversation, "This is interesting, but I must leave.")
	StartConversation(conversation, NPC, Spawn, "To them, life was precious.  No soul could rest easily if their body was not given a proper burial.  So the Priests of Life trod into the land and fought scavengers and bandits to gather all the Antonican bodies they could find.  A massive line of bodies flooded the path to Qeynos.  ")
end

function dlg_4_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/sir_antylus_teraeth/qey_village04/antylus_teraeth008.mp3", "", "", 1255692585, 2313041410)
	AddConversationOption(conversation, "The bodies are in the catacombs?", "dlg_4_11")
	StartConversation(conversation, NPC, Spawn, "Qeynos is larger than it seems.  A whole undercity exists below us.  Under the roads of the city, rest the extensive Qeynos Waterworks and the labyrinth of the Qeynos Catacombs, both of which still stand with little damage from the cataclysms.    ")
end

function dlg_4_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/sir_antylus_teraeth/qey_village04/antylus_teraeth009.mp3", "", "", 2009817836, 2128199220)
	AddConversationOption(conversation, "I thank you for the tale.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "Yes.  Every soul was given an honorable burial and was laid to rest with the bodies of the Priests of Life who fell before and after the Crusade of the Fallen.  Below the feet of every Qeynosian rests a sanctuary for the fallen souls of the Age of Cataclysms.   ")
end