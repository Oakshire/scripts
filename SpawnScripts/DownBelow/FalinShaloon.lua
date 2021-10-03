function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/merchant_falin_shaloon/qey_catacomb01/merchant_shaloon/merchant_shaloon001.mp3", "", "", 2831988431, 2273687060, Spawn)
	AddConversationOption(conversation, "I'll be on my way. ")
	StartConversation(conversation, NPC, Spawn, "Buy something or be on your way!  I don't have time to chat with the likes of you...")
end


function InRange(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/merchant_falin_shaloon/qey_catacomb01/merchants/qey_catacomb01_dwarf_merchant_aoi_callout_2aa4e27e.mp3", "If I don't have what you want, you don't need it!", "", 1298570469, 653865762, Spawn)
end

