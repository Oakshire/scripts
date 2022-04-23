--[[
	Script Name	: SpawnScripts/NorthQeynos/DanaIronforge.lua
	Script Purpose	: Dana Ironforge <Jeweler>
	Script Author	: Dorbin
	Script Date	: 2022.01.11
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

	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gf_58a92b79.mp3", "You can never be too careful when it comes to protection.  Here, try on one of these.", "agree", 3342234015, 3894819487, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gf_af50709c.mp3", "I have some nice new suits of chain that have stood up very well.  Would you like to see them?", "shrug", 1001561402, 2745612534, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gf_bb02310.mp3", "Coin is no object when gaining protection from your enemies.  What price can be put on your safety? ", "glare", 93047397, 3216144520, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gf_db7232a3.mp3", "Well, that suit is looking a mite worn.  Can I interest you in a new suit of fine armor? ", "ponder", 2349039589, 2731635835, Spawn)
	else
	end
end	
--[[ Wtf is this?
		PlayFlavor(NPC, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_01.mp3", "", "", 2834600234, 1504715618, Spawn)
		AddConversationOption(conversation, "Thank you, and good day to you.")
	StartConversation(conversation, NPC, Spawn, "Hail traveler!  All friends of the Elddar are welcome.")
	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_01.mp3", "", "", 2834600234, 1504715618, Spawn)
		AddConversationOption(conversation, "Thank you, and good day to you.")
		StartConversation(conversation, NPC, Spawn, "Hail traveler!  All friends of the Elddar are welcome.")
	end


end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_06.mp3", "", "", 3658794713, 1958132476, Spawn)
		AddConversationOption(conversation, "If only I had more time myself...")
	StartConversation(conversation, NPC, Spawn, "I've uncovered the location of a tome hidden by Karana's  followers long before the gods left this world.  I recently discovered its location with the aid of Duvos.  My duties here do not permit the time to recover the tome. I can charge you with recovering this treasure - if you're capable of such an invaluable task.")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_06.mp3", "", "", 3658794713, 1958132476, Spawn)
		AddConversationOption(conversation, "If only I had more time myself...")
	StartConversation(conversation, NPC, Spawn, "I've uncovered the location of a tome hidden by Karana's  followers long before the gods left this world.  I recently discovered its location with the aid of Duvos.  My duties here do not permit the time to recover the tome. I can charge you with recovering this treasure - if you're capable of such an invaluable task.")
end

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_07.mp3", "", "", 2198545159, 1480496199, Spawn)
		AddConversationOption(conversation, "I can do this.", "dlg_8_3")
	StartConversation(conversation, NPC, Spawn, "You will need to venture to the great oak in the fields outside the city where the tomb has been hidden for many decades. You must thoroughly search the tree. Remember, the tome has been missing for many years. Use care when handling this precious treasure. ")
end

function dlg_8_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional4/wesaelan_brookshadow/brookshadow_04.mp3", "", "", 1096830596, 4200711932, Spawn)
		AddConversationOption(conversation, "I will return with the tome.", "dlg_8_4")
	StartConversation(conversation, NPC, Spawn, "Please, you must recover the tome! Qeynos depends on you!")
end
]]--
--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gf_af50709c.mp3", "I have some nice new suits of chain that have stood up very well.  Would you like to see them?", "shrug", 1001561402, 2745612534, Spawn)
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gf_db7232a3.mp3", "Well, that suit is looking a mite worn.  Can I interest you in a new suit of fine armor? ", "ponder", 2349039589, 2731635835, Spawn)
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gf_58a92b79.mp3", "You can never be too careful when it comes to protection.  Here, try on one of these.", "agree", 3342234015, 3894819487, Spawn)
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gf_bb02310.mp3", "Coin is no object when gaining protection from your enemies.  What price can be put on your safety? ", "glare", 93047397, 3216144520, Spawn)
--]]

