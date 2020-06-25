--[[
	Script Name	: SpawnScripts/QeynosHarbor/UmliGrayfist.lua
	Script Purpose	: Umli Grayfist <Bartender>
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

		PlayFlavor(NPC, "voiceover/english/merchant_umli_grayfist/qey_harbor/umligrayfist.mp3", "", "", 3286861103, 2387698452, Spawn)
		AddConversationOption(conversation, "I'd say the deal's already been struck, Gretta sent me to fetch her order.", "dlg_0_1")
		AddConversationOption(conversation, "Thank you but I'm not interested right this second, perhaps some other time.")
	StartConversation(conversation, NPC, Spawn, "Have I got a bargain for you!  Come now, step up, I don't bite.  Check my goods and see if we can't make a whale of a deal! Ha ha ha ha ...Whale of a deal, get it?")
	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/merchant_umli_grayfist/qey_harbor/umligrayfist.mp3", "", "", 3286861103, 2387698452, Spawn)
		AddConversationOption(conversation, "Thank you but I'm not interested right this second, perhaps some other time.", "dlg_6_1")
		StartConversation(conversation, NPC, Spawn, "Have I got a bargain for you!  Come now, step up, I don't bite.  Check my goods and see if we can't make a whale of a deal! Ha ha ha ha ...Whale of a deal, get it?")
	end

	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/merchant_umli_grayfist/qey_harbor/umligrayfist.mp3", "", "", 3286861103, 2387698452, Spawn)
		AddConversationOption(conversation, "Thank you but I'm not interested right this second, perhaps some other time.", "dlg_8_1")
		StartConversation(conversation, NPC, Spawn, "Have I got a bargain for you!  Come now, step up, I don't bite.  Check my goods and see if we can't make a whale of a deal! Ha ha ha ha ...Whale of a deal, get it?")
	end

	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/merchant_umli_grayfist/qey_harbor/umligrayfist.mp3", "", "", 3286861103, 2387698452, Spawn)
		AddConversationOption(conversation, "Thank you but I'm not interested right this second, perhaps some other time.", "dlg_9_1")
		StartConversation(conversation, NPC, Spawn, "Have I got a bargain for you!  Come now, step up, I don't bite.  Check my goods and see if we can't make a whale of a deal! Ha ha ha ha ...Whale of a deal, get it?")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/merchant_umli_grayfist/qey_harbor/umligrayfist.mp3", "", "", 3286861103, 2387698452, Spawn)
		AddConversationOption(conversation, "Thank you but I'm not interested right this second, perhaps some other time.", "dlg_10_1")
		StartConversation(conversation, NPC, Spawn, "Have I got a bargain for you!  Come now, step up, I don't bite.  Check my goods and see if we can't make a whale of a deal! Ha ha ha ha ...Whale of a deal, get it?")
	end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/merchant_umli_grayfist/qey_harbor/umligrayfist000.mp3", "", "", 4224571781, 125811953, Spawn)
		AddConversationOption(conversation, "I'll make sure she hears about your plans...  by the way, she says you're uglier than a female troll.  I guess that's how dwarves flirt.", "dlg_0_2")
		AddConversationOption(conversation, "Ugh! These smell horrible!  If this is the freshest you've got, then I'll be avoiding Irontoes tonight for sure!")
	StartConversation(conversation, NPC, Spawn, "Oh, Gretta, she's a feisty little lass! Did you see her nose? And those eye brows! Yow! Some day she and I will have some mighty fine lookin' little dwarves, but don't go telling her I said so! I'll just put it on her account. There. And here's her fish.")
end

