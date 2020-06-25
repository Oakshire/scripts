--[[
	Script Name	: SpawnScripts/Nettleville/CaylessChambers.lua
	Script Purpose	: Cayless Chambers <Armorsmith>
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

	PlayFlavor(NPC, "voiceover/english/smith_cayless_chambers/qey_village01/smithcayless000.mp3", "", "", 360119992, 780476339, Spawn)
	AddConversationOption(conversation, "Just looking.")
	StartConversation(conversation, NPC, Spawn, "Welcome to the Knight's Edge. Looking for fine quality armors? I'm your lady.  Place your order and stand back.")
end