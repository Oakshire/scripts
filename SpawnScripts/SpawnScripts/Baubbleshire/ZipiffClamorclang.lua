--[[
	Script Name	: SpawnScripts/Baubbleshire/ZipiffClamorclang.lua
	Script Purpose	: Zipiff Clamorclang 
	Script Author	: Scatman
	Script Date	: 2009.09.27
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

	PlayFlavor(NPC, "voiceover/english/zipiff_clamorclang/qey_village06/zipiffclamorclang000.mp3", "", "", 2450977341, 1936083009, Spawn)
	AddConversationOption(conversation, "I think I'll move back.  It sounds like I really don't want to crimp a cog.")
	StartConversation(conversation, NPC, Spawn, "Careful where you walk!   I don't want you bending a sprocket or tweaking a spring, and you mustn't crimp a cog!  If I have to uncrimp just one more cog...")
end