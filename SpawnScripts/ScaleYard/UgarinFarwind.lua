--[[
	Script Name	: SpawnScripts/ScaleYard/UgarinFarwind.lua
	Script Purpose	: Ugarin Farwind 
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ugarin_farwind/fprt_hood06/qst_ugarian_hail.mp3", "", "", 3126487551, 1359593271, Spawn)
	AddConversationOption(conversation, "I cannot speak right now. Goodbye.")
	AddConversationOption(conversation, "Who are the Halasians?", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "Greetings. I am Ugarin, lone wolf of the north winds. I am the preserver of the lost lore of the true Halasians.")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ugarin_farwind/fprt_hood06/quests/ugarianlore/ugarian_lore_initial.mp3", "", "", 735761260, 3737623550, Spawn)
	AddConversationOption(conversation, "I cannot speak right now. Goodbye.")
	AddConversationOption(conversation, "Do you know how to get to Halas?", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "The Halasians were the champions of the frozen realms. They were the first barbarians to truly defy the gods of frost. The Halasians built the grandest city of all,  The city of Halas. It was a city of refuge amidst the magnificence of the frozen tundra and its many dangers.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ugarin_farwind/fprt_hood06/quests/ugarianlore/ugarian_lore_initial02.mp3", "", "", 224789132, 4122842515, Spawn)
	AddConversationOption(conversation, "I cannot speak right now. Goodbye.")
	AddConversationOption(conversation, "There were no survivors? (continue)", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "Halas is no more. Having survived the furies of Eci, the eternal rage of the ice dragon Vox, and even the massive assaults during the Age of War, it would be the Shattering that brought doom  to the city. Many lives were lost, a city toppled, and with that, the horns of Halas would bellow out no more.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ugarin_farwind/fprt_hood06/quests/ugarianlore/ugarian_lore_initial03.mp3", "", "", 3911189939, 1411444375, Spawn)
	AddConversationOption(conversation, "I cannot speak right now. Goodbye.")
	AddConversationOption(conversation, "You are a Halasian. I can see that glare.", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "A true Halasian? They're rare, but they do exist. You can tell who they are by the glare in their eyes. A glare that was burned into their eyes as they watched in horror as loved ones were crushed beneath the rain of Luclin and the toppling walls of Halas.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ugarin_farwind/fprt_hood06/quests/ugarianlore/ugarian_lore_initial04.mp3", "", "", 94217063, 3012088339, Spawn)
	AddConversationOption(conversation, "I cannot speak right now. Goodbye.")
	AddConversationOption(conversation, "Tell me what empires were destroyed.", "dlg_0_5")
	StartConversation(conversation, NPC, Spawn, "Perhaps. Or perhaps my eyes have seen too many horrors that swept across all of Norrath. Some say the gods have been silenced. I say we should think first of the many Empires that have been silenced. Friend or foe. Vast or humble. All were silenced.")
end

function dlg_0_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ugarin_farwind/fprt_hood06/quests/ugarianlore/ugarian_lore_initial05.mp3", "", "", 2220307498, 727996650, Spawn)
	AddConversationOption(conversation, "I cannot speak right now. Goodbye.")
	AddConversationOption(conversation, "I wish to claim the lost riches of the north. ", "dlg_0_6")
	StartConversation(conversation, NPC, Spawn, "I did not say destroyed. I said silenced. We the survivors of the Age of Cataclysms huddle within the few cities of refuge. We have had no contact nor heard any word of the lost empires. It is likely they are destroyed, but we must explore the Shattered Lands to answer this.")
end

function dlg_0_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ugarin_farwind/fprt_hood06/quests/ugarianlore/ugarian_lore_initial06.mp3", "", "", 1174793555, 2983860974, Spawn)
	AddConversationOption(conversation, "I cannot speak right now. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "The wintry lands are no more. Think only of the uncharted territory beyond the gates. This land has been shattered and reformed. Much is unknown. Leave Halas to memories.")
end

