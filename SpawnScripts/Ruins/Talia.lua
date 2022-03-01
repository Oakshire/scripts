--[[
	Script Name	: SpawnScripts/Ruins/Talia.lua
	Script Purpose	: Talia <Armorsmith>
	Script Author	: Scatman
	Script Date	: 2009.08.18
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

	PlayFlavor(NPC, "voiceover/english/merchant_talia_of_the_coalition/fprt_adv04_ruins/merchanttalia000.mp3", "", "", 1965549585, 3553254734, Spawn)
	AddConversationOption(conversation, "Give me a moment.")
	StartConversation(conversation, NPC, Spawn, "What do you want to purchase? Don't be shy.  My fine wares are worth spending your coin.")
end