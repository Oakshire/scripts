--[[
	Script Name	: SpawnScripts/Darklight/anArcaneScienceapprentice.lua
	Script Purpose	: an Arcane Science apprentice 
	Script Author	: John Adams
	Script Date	: 2009.01.31
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1008.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You've reported this to the Academy?", "dlg_9_1")
	AddConversationOption(conversation, "This is no time to stand back and gawk!")
	StartConversation(conversation, NPC, Spawn, "This is not good.  These Void tempests have been tainting Norrath, but now attacking beasts are being expelled from them!")
	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1008.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You've reported this to the Academy?", "dlg_10_1")
		AddConversationOption(conversation, "This is no time to stand back and gawk!")
		StartConversation(conversation, NPC, Spawn, "This is not good.  These Void tempests have been tainting Norrath, but now attacking beasts are being expelled from them!")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1008.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You've reported this to the Academy?", "dlg_11_1")
		AddConversationOption(conversation, "This is no time to stand back and gawk!")
		StartConversation(conversation, NPC, Spawn, "This is not good.  These Void tempests have been tainting Norrath, but now attacking beasts are being expelled from them!")
	end

end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yes, I will!")
	AddConversationOption(conversation, "If I find any.", "dlg_9_2")
	AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "That is for certain!  If I had any fighting skills I would proudly be in the thick of it, myself.  Will you join in the battle against the Void creatures?")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I sure will.")
	StartConversation(conversation, NPC, Spawn, "Excellent!  If you find anything of interest to our research while you battle the onslaught, alert me.")
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I can help.", "dlg_10_2")
	AddConversationOption(conversation, "Pardon me as I find someplace to hide.")
	StartConversation(conversation, NPC, Spawn, "Of course!  The masters are recruiting adventurers to battle them.  But they are tenacious!")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I sure will.", "dlg_10_3")
	StartConversation(conversation, NPC, Spawn, "Excellent!  If you find anything of interest to our research while you battle the onslaught, alert me.")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1008.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You've reported this to the Academy?")
	AddConversationOption(conversation, "This is no time to stand back and gawk!")
	StartConversation(conversation, NPC, Spawn, "This is not good.  These Void tempests have been tainting Norrath, but now attacking beasts are being expelled from them!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "I will honor the masters back at the academy with every detail that I can record for them.", "", 1689589577, 4560189, Spawn)
--]]

