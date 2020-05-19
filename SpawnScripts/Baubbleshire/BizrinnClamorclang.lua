--[[
	Script Name	: SpawnScripts/Baubbleshire/BizrinnClamorclang.lua
	Script Purpose	: Bizrinn Clamorclang 
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

	PlayFlavor(NPC, "voiceover/english/bizrinn_clamorclang/qey_village06/bizrinnclamorclang.mp3", "", "", 3866517974, 2558850199, Spawn)
	AddConversationOption(conversation, "Ah, that's too bad.  I guess I'll get my thingamajig whatchamacalit made somewhere else")
	StartConversation(conversation, NPC, Spawn, "Oh! Why hello there!  I am so behind on tinker work that I am not taking anymore orders at the moment ... What is it you want?")
end