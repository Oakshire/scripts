--[[
	Script Name	: SpawnScripts/Castleview/GraacJustheart.lua
	Script Purpose	: Graac Justheart 
	Script Author	: Scatman
	Script Date	: 2009.10.02
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
	GenericHail(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "And a blessing upon your house, good lady!")
	StartConversation(conversation, NPC, Spawn, "Mighty adventurer, I greet you with a hearty welcome! ")
end