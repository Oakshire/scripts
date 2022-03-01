--[[
	Script Name		:	dillon.lua
	Script Purpose	:	Waypoint Path for dillon.lua
	Script Author	:	Devn00b
	Script Date		:	04/10/2020 01:06:06 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nothing.", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "Excuse me?")
	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nothing.", "dlg_3_1")
		StartConversation(conversation, NPC, Spawn, "Excuse me?")
	end

	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nothing.", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Excuse me?")
	end

	if convo==25 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nothing.", "dlg_25_1")
		StartConversation(conversation, NPC, Spawn, "Excuse me?")
	end

	if convo==26 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nothing.", "dlg_26_1")
		StartConversation(conversation, NPC, Spawn, "Excuse me?")
	end

end

function respawn(NPC)
		spawn(NPC)
	end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 600.22, -18.07, 236.06, 2, 0)
	MovementLoopAddLocation(NPC, 592.73, -18.05, 237.94, 2, 0)
	MovementLoopAddLocation(NPC, 583.55, -17.95, 239.05, 2, 0)
	MovementLoopAddLocation(NPC, 568.26, -17.75, 240.55, 2, 0)
	MovementLoopAddLocation(NPC, 565.64, -17.72, 241.07, 2, 0)
	MovementLoopAddLocation(NPC, 560.76, -16.97, 228.14, 2, 0)
	MovementLoopAddLocation(NPC, 560.28, -15.13, 213.69, 2, 0)
	MovementLoopAddLocation(NPC, 612.83, -15.48, 205.11, 2, 0)
	MovementLoopAddLocation(NPC, 679.4, -19.38, 187.64, 2, 0)
	MovementLoopAddLocation(NPC, 680.54, -19.27, 192.39, 2, 0)
	MovementLoopAddLocation(NPC, 649.22, -17.95, 202.36, 2, 0)
	MovementLoopAddLocation(NPC, 611.57, -16.46, 211.89, 2, 0)
	MovementLoopAddLocation(NPC, 614.27, -16.46, 228.35, 2, 0)
	MovementLoopAddLocation(NPC, 622.97, -17.14, 227.34, 2, 0)
	MovementLoopAddLocation(NPC, 632.27, -17.14, 225.55, 2, 0)
	MovementLoopAddLocation(NPC, 665.54, -17.95, 215.73, 2, 0)
	MovementLoopAddLocation(NPC, 680.64, -17.95, 211.14, 2, 0)
	MovementLoopAddLocation(NPC, 665.54, -17.95, 215.73, 2, 0)
	MovementLoopAddLocation(NPC, 632.27, -17.14, 225.55, 2, 0)
	MovementLoopAddLocation(NPC, 622.97, -17.14, 227.34, 2, 0)
	MovementLoopAddLocation(NPC, 614.27, -16.46, 228.35, 2, 0)
	MovementLoopAddLocation(NPC, 611.57, -16.46, 211.89, 2, 0)
	MovementLoopAddLocation(NPC, 649.22, -17.95, 202.36, 2, 0)
	MovementLoopAddLocation(NPC, 680.54, -19.27, 192.39, 2, 0)
	MovementLoopAddLocation(NPC, 679.4, -19.38, 187.64, 2, 0)
	MovementLoopAddLocation(NPC, 612.83, -15.48, 205.11, 2, 0)
	MovementLoopAddLocation(NPC, 560.28, -15.13, 213.69, 2, 0)
	MovementLoopAddLocation(NPC, 560.76, -16.97, 228.14, 2, 0)
	MovementLoopAddLocation(NPC, 565.64, -17.72, 241.07, 2, 0)
	MovementLoopAddLocation(NPC, 568.26, -17.75, 240.55, 2, 0)
	MovementLoopAddLocation(NPC, 583.55, -17.95, 239.05, 2, 0)
	MovementLoopAddLocation(NPC, 592.73, -18.05, 237.94, 2, 0)
	MovementLoopAddLocation(NPC, 600.22, -18.07, 236.06, 2, 0)
end


