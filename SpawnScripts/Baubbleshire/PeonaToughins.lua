--[[
	Script Name	: SpawnScripts/Baubbleshire/PeonaToughins.lua
	Script Purpose	: Peona Toughins <Tailor>
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericArmorsmithVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if math.random(0, 100) <= 25 then
		FaceTarget(NPC, Spawn)
		GenericArmorsmithHail(NPC, Spawn)
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/armorer_peona_toughins/qey_village06/quests/armorer_peona_toughins/armorer_peona_toughins001.mp3", "", "", 3593368605, 1432200573, Spawn)
	AddConversationOption(conversation, "Maybe some other time.")
	StartConversation(conversation, NPC, Spawn, "Dare I say, it's a fine day for shopping. How can I help you?")
end
