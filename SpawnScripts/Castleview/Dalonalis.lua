--[[
	Script Name	: SpawnScripts/Castleview/Dalonalis.lua
	Script Purpose	: Dalonalis <Banker>
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")


function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    GenericHail(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/banker_dalonalis/qey_village04/100_banker_dalonalis_housing_quest_1_53e2b5fb.mp3", "If you're opening a new account I can help you over here.", "", 626240462, 2916710020, Spawn)
	--Below mp3 keys doesn't work
	--PlayFlavor(NPC, "voiceover/english/banker_dalonalis/qey_village04/banker_dalonalis001.mp3", "", "", 2898017630, 956866327, Spawn)
	--AddConversationOption(conversation, "I have all the trust in you.")
	--StartConversation(conversation, NPC, Spawn, "Good day to you, adventurer. Your valuables will be safe in our vaults, I promise you that.")
end