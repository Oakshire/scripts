--[[
	Script Name	: SpawnScripts/GreaterFaydark/JenthisViridar.lua
	Script Purpose	: Jenthis Viridar 
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
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/jenthis_viridar/_exp03/exp03_rgn_greater_faydark/scp/jenthis/jenthis000.mp3", "", "", 6246646, 2119314563, Spawn)
	AddConversationOption(conversation, "I am XXXXXXXX. What is the problem?", "dlg_34_1")
	AddConversationOption(conversation, "I am Leighlah. I have a status report from Captain Steelforge.")
	AddConversationOption(conversation, "I am Leighlah. I have news from Gomphum.")
	StartConversation(conversation, NPC, Spawn, "Welcome to Sapling Spur Outpost. I am Jenthis Viridar, the current rank around here. I, well... I'd like to offer our assistance, but we're in a bit of a predicament right now.")
	if convo==35 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/jenthis_viridar/_exp03/exp03_rgn_greater_faydark/scp/jenthis/jenthis000.mp3", "", "", 6246646, 2119314563, Spawn)
		AddConversationOption(conversation, "I am XXXXXXXX. What is the problem?", "dlg_35_1")
		AddConversationOption(conversation, "I am Leighlah. I have news from Gomphum.")
		StartConversation(conversation, NPC, Spawn, "Welcome to Sapling Spur Outpost. I am Jenthis Viridar, the current rank around here. I, well... I'd like to offer our assistance, but we're in a bit of a predicament right now.")
	end

	if convo==36 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/jenthis_viridar/_exp03/exp03_rgn_greater_faydark/scp/jenthis/jenthis000.mp3", "", "", 6246646, 2119314563, Spawn)
		AddConversationOption(conversation, "I am XXXXXXXX. What is the problem?", "dlg_36_1")
		StartConversation(conversation, NPC, Spawn, "Welcome to Sapling Spur Outpost. I am Jenthis Viridar, the current rank around here. I, well... I'd like to offer our assistance, but we're in a bit of a predicament right now.")
	end

end

function dlg_34_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/jenthis_viridar/_exp03/exp03_rgn_greater_faydark/scp/jenthis/jenthis001.mp3", "", "", 1747714105, 1617321160, Spawn)
	AddConversationOption(conversation, "I've also got news from Gomphum.")
	AddConversationOption(conversation, "What is the trouble you are having?", "dlg_34_2")
	AddConversationOption(conversation, "Glad to be of service.")
	StartConversation(conversation, NPC, Spawn, "Ah, very good. I will... I will get to this when there's time.")
end

function dlg_35_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/jenthis_viridar/_exp03/exp03_rgn_greater_faydark/scp/jenthis/jenthis_gomphum000.mp3", "", "", 3461568007, 163444975, Spawn)
	AddConversationOption(conversation, "He's a Shroomba. He lives in Dyer Mycoria. There was an orc with the grobins in that cave system.")
	StartConversation(conversation, NPC, Spawn, "What's a Gomphum?")
end

function dlg_35_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/jenthis_viridar/_exp03/exp03_rgn_greater_faydark/scp/jenthis/jenthis_gomphum001.mp3", "", "", 17746683, 2156800744, Spawn)
	AddConversationOption(conversation, "Just one, I killed it.", "dlg_35_3")
	StartConversation(conversation, NPC, Spawn, "Oooh, yes I recall him... An orc you say? I swear these things are spontaneously generated. How many orcs were there?")
end

function dlg_35_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/jenthis_viridar/_exp03/exp03_rgn_greater_faydark/scp/jenthis/jenthis_gomphum002.mp3", "", "", 283444902, 274954014, Spawn)
	AddConversationOption(conversation, "What is the trouble you are having?", "dlg_35_4")
	AddConversationOption(conversation, "Glad to be of service.")
	StartConversation(conversation, NPC, Spawn, "Well... that's a relief. Still... the news gets worse and worse every day.")
end

function dlg_36_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/jenthis_viridar/_exp03/exp03_rgn_greater_faydark/scp/jenthis/jenthis002.mp3", "", "", 2753677390, 2626213352, Spawn)
	AddConversationOption(conversation, "Yes?", "dlg_36_2")
	StartConversation(conversation, NPC, Spawn, "Orcs. They've been spilling out of Crushbone and into the Faydark at an alarming rate. That they have managed to get so close to Tunare's Sapling is worrisome. I've asked for more soldiers, but my requests are being denied... I... I'm sorry, I shouldn't be complaining to you. Our problem, .. GetName(Spawn) .. . is that to the west lies 'Orc Hill,' a staging area for most of the orc attacks west and south of this position. On top of that, to the east...")
end

function dlg_36_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/jenthis_viridar/_exp03/exp03_rgn_greater_faydark/scp/jenthis/jenthis003.mp3", "", "", 3006752769, 442065699, Spawn)
	AddConversationOption(conversation, "All right.", "dlg_36_3")
	StartConversation(conversation, NPC, Spawn, "To the east is an area that was once peaceful. The bixies--friendly unless provoked--reside there, but lately orcs have been moving in. We've already waited too long and they're getting complacent. I need you to scatter these would-be orc settlers and ensure they find no ground -- save the ground they die upon. There are only Crushbone pawns there for now, but pawns are nothing if not forerunners.")
end

function dlg_36_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/jenthis_viridar/_exp03/exp03_rgn_greater_faydark/scp/jenthis/jenthis004.mp3", "", "", 2745305146, 1693404774, Spawn)
	AddConversationOption(conversation, "Okay.", "dlg_36_4")
	StartConversation(conversation, NPC, Spawn, "Good. Once this is done report back to me.")
end

