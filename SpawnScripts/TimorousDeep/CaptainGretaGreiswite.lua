--[[
	Script Name	: SpawnScripts/TimorousDeep/CaptainGretaGreiswite.lua
	Script Purpose	: Captain Greta Greiswite 
	Script Author	: John Adams
	Script Date	: 2009.03.02
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

	PlayFlavor(NPC, "voiceover/english/rok_questvo/captain_greta_greiswite/_exp04/exp04_rgn_timorous_deep/chrykori_tie/greta/greta000.mp3", "", "", 3292860432, 190359428, Spawn)
	AddConversationOption(conversation, "What are you doing here? ", "dlg_12_1")
	AddConversationOption(conversation, "And I have better things to do than chat with you. Good bye.")
	StartConversation(conversation, NPC, Spawn, "Ho, I am Captain Greta Greiswite of the Far Seas Trading Company. ")
end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/captain_greta_greiswite/_exp04/exp04_rgn_timorous_deep/chrykori_tie/greta/greta001.mp3", "", "", 1430411029, 1583106161, Spawn)
	AddConversationOption(conversation, "Stuck? ", "dlg_12_2")
	AddConversationOption(conversation, "A landlocked sailor, how pathetic.", "LandLocked")
	StartConversation(conversation, NPC, Spawn, "We have been stuck on this isle for some time now, I'm afraid.")
end

function LandLocked(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Afraid of pirates?", "dlg_12_3")
	StartConversation(conversation, NPC, Spawn, "Hmph. You would be too if the waters were full of pirate vessels.")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/captain_greta_greiswite/_exp04/exp04_rgn_timorous_deep/chrykori_tie/greta/greta002.mp3", "", "", 361201415, 988826782, Spawn)
	AddConversationOption(conversation, "Afraid of pirates?", "dlg_12_3")
	StartConversation(conversation, NPC, Spawn, "We received word that there are a large number of pirate vessels in the water between here and there.")
end

function dlg_12_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/captain_greta_greiswite/_exp04/exp04_rgn_timorous_deep/chrykori_tie/greta/greta004.mp3", "", "", 668337222, 641412495, Spawn)
	AddConversationOption(conversation, "What are they doing here?", "dlg_12_4")
	StartConversation(conversation, NPC, Spawn, "Afraid? Hah! I'd have us in the water already if we hadn't been ordered to stay. I'm not afraid of the Blackshield Smugglers. They are sloppy and poorly organized. Though... I do admit their numbers unnerve me.")
end

function dlg_12_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/captain_greta_greiswite/_exp04/exp04_rgn_timorous_deep/chrykori_tie/greta/greta005.mp3", "", "", 952241387, 2475617696, Spawn)
	AddConversationOption(conversation, "So there's a lot of wealth to be made here?", "dlg_12_5")
	StartConversation(conversation, NPC, Spawn, "Now that's a question, isn't it? I hardly doubt they've come to trade, especially not en masse. If they plan to threaten Chrykori Village, though, I am glad we will be here to help defend. The agreements we have drawn up with them are quite... lucrative.")
end

function dlg_12_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/captain_greta_greiswite/_exp04/exp04_rgn_timorous_deep/chrykori_tie/greta/greta006.mp3", "", "", 905384957, 1760883232, Spawn)
	AddConversationOption(conversation, "You think more will come?", "dlg_12_6")
	StartConversation(conversation, NPC, Spawn, "For those who are quick.")
end

function dlg_12_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/captain_greta_greiswite/_exp04/exp04_rgn_timorous_deep/chrykori_tie/greta/greta007.mp3", "", "", 4216354466, 950449403, Spawn)
	AddConversationOption(conversation, "Can't have that happening.")
	StartConversation(conversation, NPC, Spawn, "Undoubtedly. This is a new land, with new possibilities. So long as it doesn't become cut off by pirates... many more will come. And profit to boot.")
end