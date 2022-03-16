--[[
	Script Name	: SpawnScripts/Longshadow/EzriaMLinar.lua
	Script Purpose	: Ezria M'Linar 
	Script Author	: John Adams
	Script Date	: 2008.09.29
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

	PlayFlavor(NPC, "voiceover/english/merchant_ezria_milnar/fprt_hood05/std_de_female_ezria_mlinar.mp3", "", "curtsey", 1300269011, 2618097834, Spawn)
	AddConversationOption(conversation, "I'm still deciding. I'll let you know if I want anything.")
	AddConversationOption(conversation, "What is Neriak?","dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "Ah.  How lovely.  Perhaps you are a fellow sophisticate with a palate for the finer things?  I am a vintner, you see.  Ezria M'Linar is my name.  My wines capture the essence of a long lost Neriak.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/merchant_ezria_milnar/fprt_hood05/std_de_female_ezria_mlinar003.mp3", "", "boggle", 1051883363, 861878972, Spawn)
	AddConversationOption(conversation, "Who are the Teir'Dal?","dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Oh my.  Please.  Are you youngsters so ignorant of history?  Neriak is the ancient homeland of the Teir'Dal, lost for centuries beneath the forest lands to the north.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/merchant_ezria_milnar/fprt_hood05/std_de_female_ezria_mlinar004.mp3", "", "glare", 2552789619, 2468887624, Spawn)
	AddConversationOption(conversation, "Ok.", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "I weep for the future.  Teir'Dal, my poor uninformed friend, is the proper elvish name for the dark elf race.  Now please.  Leave me be.")
end