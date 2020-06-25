--[[
	Script Name	: SpawnScripts/GreaterFaydark/ScoutSpelunkle.lua
	Script Purpose	: Scout Spelunkle 
	Script Author	: John Adams
	Script Date	: 2009.02.05
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
	SpawnSet(NPC, "visual_state", "221")	-- Start crouch_idle
end

function hailed(NPC, Spawn)

	SpawnSet(NPC, "visual_state", "0")	-- Stop crouch_idle

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	-- when done with Queen, this is his standard response.
	-- PlayFlavor(NPC, "voiceover/english/exp03_questvo2/scout_spelunkle/_exp03/exp03_rgn_greater_faydark/quest/scout_spelunkle_completed_a127dc51.mp3", "Good work with that shrumbler queen!  You sure squashed her good!", "", 1471734703, 3961292565, Spawn)

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/scout_spelunkle/_exp03/exp03_rgn_greater_faydark/scout_spelunkle/scout_spelunkle001.mp3", "", "", 1120182218, 3612192920, Spawn)
	AddConversationOption(conversation, "Captain Steelforge wanted to know if you were okay.  You shouldn't go running off alone.", "dlg_4_1")
	AddConversationOption(conversation, "I was just exploring, sorry.")
	StartConversation(conversation, NPC, Spawn, "AAAAAHHHHH!   Oh wait, yer not a grobin...  What are you doin' scaring me like that!?")

	if convo==29 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/scout_spelunkle/_exp03/exp03_rgn_greater_faydark/scout_spelunkle/scout_spelunkle001.mp3", "", "", 1120182218, 3612192920, Spawn)
		AddConversationOption(conversation, "Captain Steelforge wanted to know if you were okay.  You shouldn't go running off alone.", "dlg_29_1")
		AddConversationOption(conversation, "I was just exploring, sorry.")
		StartConversation(conversation, NPC, Spawn, "AAAAAHHHHH!   Oh wait, yer not a grobin...  What are you doin' scaring me like that!?")
	end

end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/scout_spelunkle/_exp03/exp03_rgn_greater_faydark/scout_spelunkle/scout_spelunkle002.mp3", "", "", 846928893, 15725150, Spawn)
	AddConversationOption(conversation, "Have you discovered anything while you were down here?", "dlg_4_2")
	AddConversationOption(conversation, "I see.  Well, I'll be leaving, goodbye.")
	StartConversation(conversation, NPC, Spawn, "Doh!  I knew I forgot something... orders... I need to remember to get me orders first!  Everything's okay here, I just really like my job as a Specialist Spelunker.  Nothin' like crawlin' around in a dark, musty cave.")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/scout_spelunkle/_exp03/exp03_rgn_greater_faydark/scout_spelunkle/scout_spelunkle003.mp3", "", "", 4168182811, 2184104853, Spawn)
	AddConversationOption(conversation, "They need to be stopped.  What do you have planned?", "dlg_4_3")
	StartConversation(conversation, NPC, Spawn, "I found where the grobins are gettin' their shrumbler eggs.  They're keepin' a big shrumbler in a cave near the back... and boy, she's a big one!  They scoop up the icky eggs she lays, put 'em in jars and  then they carry 'em out of here.  ")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/scout_spelunkle/_exp03/exp03_rgn_greater_faydark/scout_spelunkle/scout_spelunkle004.mp3", "", "", 4233413026, 410396832, Spawn)
	AddConversationOption(conversation, "I'll do it.", "dlg_4_4")
	AddConversationOption(conversation, "Forget it, I'm out of here.")
	StartConversation(conversation, NPC, Spawn, "Me?!  I'm not a sword swingin' or finger wigglin' type. I'm just an explorer!  Maybe you can do it!  You could get to the shrumbler queen you could take her out! ")
end

function dlg_4_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/scout_spelunkle/_exp03/exp03_rgn_greater_faydark/scout_spelunkle/scout_spelunkle005.mp3", "", "", 3135812044, 2119680514, Spawn)
	AddConversationOption(conversation, "I understand.")
	StartConversation(conversation, NPC, Spawn, "Good.  All you have to do is eliminate the shrumbler queen. That'll stop the grobins from gettin those shrumbler eggs.  Once you finish that, go back to the captain and let him know what happened.")
end

function dlg_29_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/scout_spelunkle/_exp03/exp03_rgn_greater_faydark/scout_spelunkle/scout_spelunkle002.mp3", "", "", 846928893, 15725150, Spawn)
	AddConversationOption(conversation, "Have you discovered anything while you were down here?", "dlg_29_2")
	AddConversationOption(conversation, "I see.  Well, I'll be leaving, goodbye.")
	StartConversation(conversation, NPC, Spawn, "Doh!  I knew I forgot something... orders... I need to remember to get me orders first!  Everything's okay here, I just really like my job as a Specialist Spelunker.  Nothin' like crawlin' around in a dark, musty cave.")
end

function dlg_29_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/scout_spelunkle/_exp03/exp03_rgn_greater_faydark/scout_spelunkle/scout_spelunkle003.mp3", "", "", 4168182811, 2184104853, Spawn)
	AddConversationOption(conversation, "They need to be stopped.  What do you have planned?", "dlg_29_3")
	StartConversation(conversation, NPC, Spawn, "I found where the grobins are gettin' their shrumbler eggs.  They're keepin' a big shrumbler in a cave near the back... and boy, she's a big one!  They scoop up the icky eggs she lays, put 'em in jars and  then they carry 'em out of here.  ")
end

function dlg_29_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/scout_spelunkle/_exp03/exp03_rgn_greater_faydark/scout_spelunkle/scout_spelunkle004.mp3", "", "", 4233413026, 410396832, Spawn)
	AddConversationOption(conversation, "I'll do it.", "dlg_29_4")
	AddConversationOption(conversation, "Forget it, I'm out of here.")
	StartConversation(conversation, NPC, Spawn, "Me?!  I'm not a sword swingin' or finger wigglin' type. I'm just an explorer!  Maybe you can do it!  You could get to the shrumbler queen you could take her out! ")
end

function dlg_29_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/scout_spelunkle/_exp03/exp03_rgn_greater_faydark/scout_spelunkle/scout_spelunkle005.mp3", "", "", 3135812044, 2119680514, Spawn)
	AddConversationOption(conversation, "I understand.", "dlg_29_5")
	StartConversation(conversation, NPC, Spawn, "Good.  All you have to do is eliminate the shrumbler queen. That'll stop the grobins from gettin those shrumbler eggs.  Once you finish that, go back to the captain and let him know what happened.")
end

