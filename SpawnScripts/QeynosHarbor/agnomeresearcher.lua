--[[
	Script Name	: SpawnScripts/QeynosHarbor/agnomeresearcher.lua
	Script Purpose	: a gnome researcher <Tinmizer's Tinkerers>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1025.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Ahem.", "dlg_12_1")
		AddConversationOption(conversation, "If I find any small-brained sorts, I'll let you know.  Goodbye. ")
	StartConversation(conversation, NPC, Spawn, "This research opportunity is amazing.  It appears that traveling all the way out here was a brilliant idea, after all.  And of course it was a good idea, because I am brilliant!  Now if I could only find some small-brained, strong-backed sorts to test the parameters of the Cog of Precision.")
	if convo==13 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1025.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Ahem.", "dlg_13_1")
		AddConversationOption(conversation, "If I find any small-brained sorts, I'll let you know.  Goodbye. ")
		StartConversation(conversation, NPC, Spawn, "This research opportunity is amazing.  It appears that traveling all the way out here was a brilliant idea, after all.  And of course it was a good idea, because I am brilliant!  Now if I could only find some small-brained, strong-backed sorts to test the parameters of the Cog of Precision.")
	end

	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1025.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Ahem.", "dlg_14_1")
		AddConversationOption(conversation, "If I find any small-brained sorts, I'll let you know.  Goodbye. ")
		StartConversation(conversation, NPC, Spawn, "This research opportunity is amazing.  It appears that traveling all the way out here was a brilliant idea, after all.  And of course it was a good idea, because I am brilliant!  Now if I could only find some small-brained, strong-backed sorts to test the parameters of the Cog of Precision.")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1025.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Ahem.", "dlg_15_1")
		AddConversationOption(conversation, "If I find any small-brained sorts, I'll let you know.  Goodbye. ")
		StartConversation(conversation, NPC, Spawn, "This research opportunity is amazing.  It appears that traveling all the way out here was a brilliant idea, after all.  And of course it was a good idea, because I am brilliant!  Now if I could only find some small-brained, strong-backed sorts to test the parameters of the Cog of Precision.")
	end

	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1025.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Ahem.", "dlg_16_1")
		AddConversationOption(conversation, "If I find any small-brained sorts, I'll let you know.  Goodbye. ")
		StartConversation(conversation, NPC, Spawn, "This research opportunity is amazing.  It appears that traveling all the way out here was a brilliant idea, after all.  And of course it was a good idea, because I am brilliant!  Now if I could only find some small-brained, strong-backed sorts to test the parameters of the Cog of Precision.")
	end

	if convo==17 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1040.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Wait, see what?", "dlg_17_1")
		AddConversationOption(conversation, "I don't have time for this nonsense. ")
		StartConversation(conversation, NPC, Spawn, "Tell me you saw it!  Tell me I'm not dreaming!  Oh, my grampy's grammy's grampy's aunt Jude would have given up her favorite brass clockwork potato peeler for just a glimpse of it!  And this was during the potato glut of '06, when such a trade would have been ill-advised.")
	end

	if convo==18 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1040.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Wait, see what?", "dlg_18_1")
		AddConversationOption(conversation, "I don't have time for this nonsense. ")
		StartConversation(conversation, NPC, Spawn, "Tell me you saw it!  Tell me I'm not dreaming!  Oh, my grampy's grammy's grampy's aunt Jude would have given up her favorite brass clockwork potato peeler for just a glimpse of it!  And this was during the potato glut of '06, when such a trade would have been ill-advised.")
	end

	if convo==19 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1040.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Wait, see what?", "dlg_19_1")
		AddConversationOption(conversation, "I don't have time for this nonsense. ")
		StartConversation(conversation, NPC, Spawn, "Tell me you saw it!  Tell me I'm not dreaming!  Oh, my grampy's grammy's grampy's aunt Jude would have given up her favorite brass clockwork potato peeler for just a glimpse of it!  And this was during the potato glut of '06, when such a trade would have been ill-advised.")
	end

	if convo==20 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1040.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Wait, see what?", "dlg_20_1")
		AddConversationOption(conversation, "I don't have time for this nonsense. ")
		StartConversation(conversation, NPC, Spawn, "Tell me you saw it!  Tell me I'm not dreaming!  Oh, my grampy's grammy's grampy's aunt Jude would have given up her favorite brass clockwork potato peeler for just a glimpse of it!  And this was during the potato glut of '06, when such a trade would have been ill-advised.")
	end

end

