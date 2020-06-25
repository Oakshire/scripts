--[[
	Script Name	: SpawnScripts/ElddarGrove/PatrolwomanVarna.lua
	Script Purpose	: Patrolwoman Varna <Guard>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/barbarian/barbarian_eco_good_1_hail_gf_ec4612.mp3", "Always be vigil, you never know when evil will strike.", "lookaway", 1096415868, 4151719434, Spawn)
end

