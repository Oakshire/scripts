--[[
	Script Name	: SpawnScripts/EnchantedLands/KelbriMossborn.lua
	Script Purpose	: Kelbri Mossborn 
	Script Author	: Cynnar
	Script Date	: 2015.02.24
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

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/kelbri_mossborne/enchanted/halflings/halfling_kelbri_mossborn_aoi_callout_familiar_9d74e583.mp3", "Oh, hello!  It's good to see you again, can you help me?", "beckon", 3468817510, 52317813, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/kelbri_mossborne/enchanted/halflings/halfling_kelbri_mossborn_aoi_callout_unfamiliar_119582aa.mp3", "Greetings, traveler. Have you come from the far off lands?", "curtsey", 1090087928, 2030017349, Spawn)
	else
	end

		PlayFlavor(NPC, "voiceover/english/kelbri_mossborne/enchanted/kelbri_mossborn001.mp3", "", "", 335654581, 1424626697, Spawn)
		AddConversationOption(conversation, "Sure, I'll help you.", "dlg_8_1")
		AddConversationOption(conversation, "I'm not interested in helping.")
	StartConversation(conversation, NPC, Spawn, "As you can see, the halflings and Seamist fairies staved off the majority of the evil from this small area of the Enchanted Lands. But we fear that as they grow older, local creatures are becoming more and more tainted.  Please show some mercy and thin out their population; it's for the best.")
	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/kelbri_mossborne/enchanted/kelbri_mossborn004.mp3", "", "", 584763382, 2817458045, Spawn)
		AddConversationOption(conversation, "It sure does.  Have you got any more work for me?", "dlg_9_1")
		AddConversationOption(conversation, "Thanks, I'll be on my way.")
		StartConversation(conversation, NPC, Spawn, "Well done!  I hope this compensates you for your time and effort.")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/kelbri_mossborne/enchanted/kelbri_mossborn004.mp3", "", "", 584763382, 2817458045, Spawn)
		AddConversationOption(conversation, "It sure does.  Have you got any more work for me?", "dlg_10_1")
		AddConversationOption(conversation, "Thanks, I'll be on my way.")
		StartConversation(conversation, NPC, Spawn, "Well done!  I hope this compensates you for your time and effort.")
	end

	if convo==35 then
		PlayFlavor(NPC, "voiceover/english/kelbri_mossborne/enchanted/kelbri_mossborn001.mp3", "", "", 335654581, 1424626697, Spawn)
		AddConversationOption(conversation, "Sure, I'll help you.", "dlg_35_1")
		AddConversationOption(conversation, "I'm not interested in helping.")
		StartConversation(conversation, NPC, Spawn, "As you can see, the halflings and Seamist fairies staved off the majority of the evil from this small area of the Enchanted Lands. But we fear that as they grow older, local creatures are becoming more and more tainted.  Please show some mercy and thin out their population; it's for the best.")
	end

	if convo==36 then
		PlayFlavor(NPC, "voiceover/english/kelbri_mossborne/enchanted/kelbri_mossborn001.mp3", "", "", 335654581, 1424626697, Spawn)
		AddConversationOption(conversation, "Sure, I'll help you.", "dlg_36_1")
		AddConversationOption(conversation, "I'm not interested in helping.")
		StartConversation(conversation, NPC, Spawn, "As you can see, the halflings and Seamist fairies staved off the majority of the evil from this small area of the Enchanted Lands. But we fear that as they grow older, local creatures are becoming more and more tainted.  Please show some mercy and thin out their population; it's for the best.")
	end

	if convo==37 then
		PlayFlavor(NPC, "voiceover/english/kelbri_mossborne/enchanted/kelbri_mossborn003.mp3", "", "", 3665637918, 1158066003, Spawn)
		AddConversationOption(conversation, "Okay.", "dlg_37_1")
		StartConversation(conversation, NPC, Spawn, "You've done well thus far, but I need you to slay more beasts!")
	end

end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/kelbri_mossborne/enchanted/kelbri_mossborn002.mp3", "", "", 2995435906, 726121034, Spawn)
		AddConversationOption(conversation, "As you wish.", "dlg_8_2")
	StartConversation(conversation, NPC, Spawn, "Very well, then! Thin out the overpopulation of beasts living on this side of the wall.")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/kelbri_mossborne/enchanted/kelbri_mossborn005.mp3", "", "", 3034402547, 289714368, Spawn)
		AddConversationOption(conversation, "Sure, I'll help.", "dlg_9_2")
	StartConversation(conversation, NPC, Spawn, "You've done your part to maintain the purity of the creatures of the Enchanted Lands. Do you have time to hunt more beasts?")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/kelbri_mossborne/enchanted/halflings/halfling_kelbri_mossborn_aoi_callout_unfamiliar_119582aa.mp3", "Greetings, traveler. Have you come from the far off lands?", "curtsey", 1090087928, 2030017349, Spawn)
	PlayFlavor(NPC, "voiceover/english/kelbri_mossborne/enchanted/halflings/halfling_kelbri_mossborn_aoi_callout_familiar_9d74e583.mp3", "Oh, hello!  It's good to see you again, can you help me?", "beckon", 3468817510, 52317813, Spawn)
--]]

