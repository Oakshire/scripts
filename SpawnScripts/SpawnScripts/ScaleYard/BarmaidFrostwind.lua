--[[
	Script Name	: SpawnScripts/ScaleYard/BarmaidFrostwind.lua
	Script Purpose	: Barmaid Frostwind <Provisioner>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/barbarian_eco_evil_1/ft/service/baker/barbarian_baker_service_evil_1_hail_gf_3454f243.mp3", "The Ogre bread takes an extra long time to bake.  Hey, they like large servings.", "nod", 3269011006, 1976908720, Spawn)
end

