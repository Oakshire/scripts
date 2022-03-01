--[[
	Script Name	: SpawnScripts/Butcherblock/MizzenStaysail.lua
	Script Purpose	: Mizzen Staysail <The Far Seas Trading Company>
	Script Author	: jakejp
	Script Date	: 2018.06.02
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local CaptainSays = 267

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, CaptainSays) and GetQuestStep(Spawn, CaptainSays) == 2 then
		PlayFlavor(NPC, "mizzen_staysail/_exp03/exp03_rgn_butcherblock/staysail/staysail001.mp3", "", "", 1029519275, 2649145859, Spawn)
		AddConversationOption(conversation, "Orders from the Cap'n, Shorty!", "dlg_7_1")
		AddConversationOption(conversation, "I'll let you get back to your story.")
		StartConversation(conversation, NPC, Spawn, "So there I was! Surrounded by a marauding band of... Undead... Elemental... Orc pirates! Armed with only a flanger-poozle and frik-fork! So I says to 'em...")
	else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
	PlayFlavor(NPC, "", "So there I was! Surrounded by a marauding band of... Undead... Elemental... Orc pirates! Armed with only a flanger-poozle and frak-fork! So I says to 'em...", "", 1689589577, 4560189, Spawn)
	end

		
end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Cap'n says ta knock off the deck work an' brighten the clamp!", "WrongChoice")
		AddConversationOption(conversation, "Cap'n says ta brighten the clamp off an' work on the deck knock!", "WrongChoice")
		AddConversationOption(conversation, "Cap'n says to knock off the bright work an' clamp down the deck!", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "Bah! I was just gettin' ta the good part. Alright then, if you be a representative of ta' Cap'n, then lemme 'ave it!")
end

function dlg_7_2(NPC, Spawn)
	SetStepComplete(Spawn, CaptainSays, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Aye aye!")
	StartConversation(conversation, NPC, Spawn, "Well, why didn't you say so?! Tell the Cap'n I'll be right over!")
end

function WrongChoice(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Hmm, perhaps I mixed that one up. Let me start over.", "dlg_7_1")
	StartConversation(conversation, NPC, Spawn, "Whaaa? Ho ho ho. He he he. That thar is what we call a good fisherman's tale. Oooh-hoo. Too funny friend, too funny!")
end
--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
	PlayFlavor(NPC, "", "So there I was! Surrounded by a marauding band of... Undead... Elemental... Orc pirates! Armed with only a flanger-poozle and frak-fork! So I says to 'em...", "", 1689589577, 4560189, Spawn)
--]]

