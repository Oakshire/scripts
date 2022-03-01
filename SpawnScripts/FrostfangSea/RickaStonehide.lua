--[[
	Script Name	: SpawnScripts/FrostfangSea/RickaStonehide.lua
	Script Purpose	: Ricka Stonehide <Sage>
	Script Author	: theFoof
	Script Date	: 2013.10.30
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

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1041.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thanks for the information, I just might do that.", "dlg_3_1")
	StartConversation(conversation, NPC, Spawn, "Search for the relics of the past Age of Turmoil.  Their discovery will gain you great power and prestige!")
end