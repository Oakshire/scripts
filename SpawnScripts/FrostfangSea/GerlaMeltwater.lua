--[[
	Script Name	: SpawnScripts/FrostfangSea/GerlaMeltwater.lua
	Script Purpose	: Gerla Meltwater 
	Script Author	: theFoof
	Script Date	: 2013.06.13
	Script Notes	: 
--]]

local SeekingEducation = 63

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	if GetQuestStep(Spawn, SeekingEducation) == 2 then
		conversation = CreateConversation()
		PlayFlavor(NPC, "gerla_meltwater/halas/new_halas_guard_house/gerla_meltwater_001.mp3", "", "", 3974328348, 1246567656, Spawn)
	    AddConversationOption(conversation, "Torli Blackbow thought you could help.  There is a large ice and velium elemental living below New Halas!", "Quest1Chat_1")
	    StartConversation(conversation, NPC, Spawn, "Hail, " .. GetName(Spawn) .. ".  What boulder weighs so upon your shoulders?")
	else
		PlayFlavor(NPC, "", "Hail, adventurer.", "hello", 1689589577, 4560189, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "gerla_meltwater/halas/new_halas_guard_house/gerla_meltwater_002.mp3", "", "", 376722497, 2039361987, Spawn)
	AddConversationOption(conversation, "That's just it.   It's not.", "Quest1Chat_2")
	StartConversation(conversation, NPC, Spawn, "Aye.  And as long as it slumbers we have nothing to fear.")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "gerla_meltwater/halas/new_halas_guard_house/gerla_meltwater_003.mp3", "", "", 936830392, 1591106960, Spawn)
	AddConversationOption(conversation, "The Ry'Gorr were digging tunnels below the city.", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "Beasts of the deep!  It has awoken?!  It slumbered for years under our feet.  What could have woken it now?")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "gerla_meltwater/halas/new_halas_guard_house/gerla_meltwater_004.mp3", "", "", 4211598278, 1116854185, Spawn)
	AddConversationOption(conversation, "Why is that so important?", "Quest1Chat_4")
	AddConversationOption(conversation, "Can't we just kill it?", "Quest1Chat_4")
	StartConversation(conversation, NPC, Spawn, "Another reason to smite each and every one of the vile creatures!  Now to return the elemental back to its dormancy.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "gerla_meltwater/halas/new_halas_guard_house/gerla_meltwater_005.mp3", "", "", 3234303592, 778815839, Spawn)
	AddConversationOption(conversation, "That's amazing.", "Quest1Chat_5")
	StartConversation(conversation, NPC, Spawn, "Long before Mithaniel blessed this carved bit of Velious, we floated.  Long and far, through moderate and warm waters we sailed.  Yet frozen the bulk remained.")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "gerla_meltwater/halas/new_halas_guard_house/gerla_meltwater_006.mp3", "", "", 1707551626, 618350055, Spawn)
	AddConversationOption(conversation, "And now that it's awake?", "Quest1Chat_6")
	StartConversation(conversation, NPC, Spawn, "I discovered the ancient elemental while probing the terrain with some spells.  It was during one of our campaigns to remove the Ry'Gorr.  Ever since then I have theorized that it may have been the cause of our eternal freeze.")
end

function Quest1Chat_6(NPC, Spawn)
	if not HasItem(Spawn, 7666) then
		SummonItem(Spawn, 7666)
	end
	SetStepComplete(Spawn, SeekingEducation, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "gerla_meltwater/halas/new_halas_guard_house/gerla_meltwater_007.mp3", "", "", 2595302383, 231640410, Spawn)
	AddConversationOption(conversation, "Right away, Gerla.")
	StartConversation(conversation, NPC, Spawn, "We must induce slumber, once more!  Take this satchel back to Torli Blackbow.")
end