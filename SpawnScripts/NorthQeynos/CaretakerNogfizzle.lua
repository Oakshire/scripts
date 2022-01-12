--[[
	Script Name	: SpawnScripts/NorthQeynos/CaretakerNogfizzle.lua
	Script Purpose	: Caretaker Nogfizzle <Celestial Watch Priest>
	Script Author	: Dorbin
	Script Date	: 2022.01.11
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/caretaker_nogfizzle/qey_north/100_soc_gnome_celestial_nogfizzle_goodbye_92e2ec93.mp3", "I'm afraid you've surpassed the ability of this humble caretaker's teachings. Seek out Disciple Telas`velle when you're ready to continue your teachings.  Farewell!  ", "sigh", 1044710758, 3793935981, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/caretaker_nogfizzle/qey_north/100_soc_gnome_celestial_nogfizzle_goodbye_92e2ec93.mp3", "I'm afraid you've surpassed the ability of this humble caretaker's teachings. Seek out Disciple Telas'velle when you're ready to continue your teachings.  Farewell!  ", "sigh", 1044710758, 3793935981, Spawn)
	else
	end

		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will be going.")
	StartConversation(conversation, NPC, Spawn, "...")
	if convo==9 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will be going.")
		StartConversation(conversation, NPC, Spawn, "...")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will be going.")
		StartConversation(conversation, NPC, Spawn, "...")
	end

end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/caretaker_nogfizzle/qey_north/100_soc_gnome_celestial_nogfizzle_hail_f4707a0f.mp3", "", "", 2710561134, 2435527520, Spawn)
		AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, NPC, Spawn, "I'm happy to see you return!  We set aside another writ for you. Take it, my student, and see to the safety of our city.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/caretaker_nogfizzle/qey_north/100_soc_gnome_celestial_nogfizzle_goodbye_92e2ec93.mp3", "I'm afraid you've surpassed the ability of this humble caretaker's teachings. Seek out Disciple Telas`velle when you're ready to continue your teachings.  Farewell!  ", "sigh", 1044710758, 3793935981, Spawn)
	PlayFlavor(NPC, "voiceover/english/caretaker_nogfizzle/qey_north/100_soc_gnome_celestial_nogfizzle_goodbye_92e2ec93.mp3", "I'm afraid you've surpassed the ability of this humble caretaker's teachings. Seek out Disciple Telas'velle when you're ready to continue your teachings.  Farewell!  ", "sigh", 1044710758, 3793935981, Spawn)
--]]

