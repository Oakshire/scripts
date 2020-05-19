--[[
	Script Name	: SpawnScripts/Darklight/aConcordiumPupilAdept.lua
	Script Purpose	: a Concordium Pupil Adept 
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

	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Such storms!  The elders were right!  We must rise up and fight these invaders together!", "", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1005.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You've reported this to the Concordium?", "dlg_0_1")
	AddConversationOption(conversation, "This is no time to stand back and gawk!")
	StartConversation(conversation, NPC, Spawn, "First these Void storms were tainting Norrath.  Now they are spitting out forces of attacking beasts!")
	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1005.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You've reported this to the Concordium?", "dlg_1_1")
		AddConversationOption(conversation, "This is no time to stand back and gawk!")
		StartConversation(conversation, NPC, Spawn, "First these Void storms were tainting Norrath.  Now they are spitting out forces of attacking beasts!")
	end

	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You've reported this to the Concordium?", "dlg_2_1")
		AddConversationOption(conversation, "This is no time to stand back and gawk!")
		StartConversation(conversation, NPC, Spawn, "First these Void storms were tainting Norrath.  Now they are spitting out forces of attacking beasts!")
	end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I can help.", "dlg_0_2")
	AddConversationOption(conversation, "Pardon me as I find someplace to hide.")
	StartConversation(conversation, NPC, Spawn, "Oh, yes!  The elders are sending out adventurers to help battle them.  But they just keep coming!")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You got it.", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "Good, good!  If you find anything of interest while you battle the Void storm creatures, anything that can help us in our research, I would appreciate it!")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yes, I am!")
	AddConversationOption(conversation, "If I find any.", "dlg_1_2")
	AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "Right you are!  And if I had any fighting skills I would be in the thick of it, myself.  Are you going to fight the Void creatures!?")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You got it.", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "Good, good!  If you find anything of interest while you battle the Void storm creatures, anything that can help us in our research, I would appreciate it!")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I can help.", "dlg_2_2")
	AddConversationOption(conversation, "Pardon me as I find someplace to hide.")
	StartConversation(conversation, NPC, Spawn, "Oh, yes!  The elders are sending out adventurers to help battle them.  But they just keep coming!")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You've reported this to the Concordium?")
	AddConversationOption(conversation, "This is no time to stand back and gawk!")
	StartConversation(conversation, NPC, Spawn, "First these Void storms were tainting Norrath.  Now they are spitting out forces of attacking beasts!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "Such storms!  The elders were right!  We must rise up and fight these invaders together!", "", 1689589577, 4560189, Spawn)
--]]

