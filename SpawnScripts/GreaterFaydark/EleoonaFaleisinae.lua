--[[
	Script Name	: SpawnScripts/GreaterFaydark/EleoonaFaleisinae.lua
	Script Purpose	: Eleoona Faleisinae 
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/eleoona_faleisinae/_exp03/exp03_cty_kelethin/quest/quest_intro_eleoona_hail_2e22fc60.mp3", "Kelethin belongs to the Fae now.", "", 1403528353, 3139849181, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/eleoona_faleisinae/_exp03/exp03_cty_kelethin/quest/quest_intro_eleoona_hail_2e3cf704.mp3", "Times were much simpler when I was younger.  So much has changed since then!", "", 1966167640, 4246981561, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo/eleoona_faleisinae/_exp03/exp03_cty_kelethin/quest/quest_intro_eleoona_hail_60d7f941.mp3", "Nothing makes me laugh more than seeing someone take a wrong turn off a platform!", "chuckle", 2980400722, 2578144339, Spawn)
	else
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/eleoona_faleisinae/_exp03/exp03_cty_kelethin/tutorials/qst_eleoona/qst_eleoona001.mp3", "", "", 2570228484, 695828840, Spawn)
	AddConversationOption(conversation, "Jalmari Keletana sent me to ask your advice about the Grender.", "dlg_5_1")
	AddConversationOption(conversation, "I seek nothing at this time.")
	StartConversation(conversation, NPC, Spawn, "What do you seek?")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/eleoona_faleisinae/_exp03/exp03_cty_kelethin/tutorials/qst_eleoona/qst_eleoona002.mp3", "", "", 3929358033, 309978465, Spawn)
	AddConversationOption(conversation, "They say that?", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "The Grender? I've heard of it.  They say it breathes fire and belches a thick gaseous cloud that poisons all it touches!  They say its eyes are red hot coals and if you stare into them, you'll be blinded!")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/eleoona_faleisinae/_exp03/exp03_cty_kelethin/tutorials/qst_eleoona/qst_eleoona003.mp3", "", "", 2961784962, 1653403158, Spawn)
	AddConversationOption(conversation, "Working with Kalamar Vesinger, I've located the Grender's lair beneath Kelethin.  Jalmari wants to know what you recommend we do.", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "Of course not! Heehee ... I'm just kidding! What do you need advice about?")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo/eleoona_faleisinae/_exp03/exp03_cty_kelethin/tutorials/qst_eleoona/qst_eleoona004.mp3", "", "", 3699665352, 534069949, Spawn)
	AddConversationOption(conversation, "But I...oh, nevermind.", "dlg_5_4")
	StartConversation(conversation, NPC, Spawn, "I've no time for your foolishness! I'm planning the next social event for the self-defense force and it does not include waltzing with the Grender.  Please, take your jokes elsewhere.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/exp03_questvo/eleoona_faleisinae/_exp03/exp03_cty_kelethin/quest/quest_intro_eleoona_hail_60d7f941.mp3", "Nothing makes me laugh more than seeing someone take a wrong turn off a platform!", "chuckle", 2980400722, 2578144339, Spawn)
	PlayFlavor(NPC, "voiceover/english/exp03_questvo/eleoona_faleisinae/_exp03/exp03_cty_kelethin/quest/quest_intro_eleoona_hail_2e3cf704.mp3", "Times were much simpler when I was younger.  So much has changed since then!", "", 1966167640, 4246981561, Spawn)
	PlayFlavor(NPC, "voiceover/english/exp03_questvo/eleoona_faleisinae/_exp03/exp03_cty_kelethin/quest/quest_intro_eleoona_hail_2e22fc60.mp3", "Kelethin belongs to the Fae now.", "", 1403528353, 3139849181, Spawn)
--]]

