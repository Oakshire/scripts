--[[
	Script Name	: SpawnScripts/Nettleville/ConstableArathur.lua
	Script Purpose	: Constable Arathur 
	Script Author	: Scatman
	Script Date	: 2009.08.12
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/constable_arathur/qey_village01/constablearathur000.mp3", "", "", 1713133658, 629344486, Spawn)
	AddConversationOption(conversation, "I shall do my part. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Hail, Qeynosian. Please be on the lookout for any illicit trade activities. We must all do our part to keep corruption from creeping into our fair city. ")
end