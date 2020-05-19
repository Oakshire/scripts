--[[
	Script Name	: SpawnScripts/GraystoneYard/BriceStrongmend.lua
	Script Purpose	: Brice Strongmend 
	Script Author	: Jabantiz
	Script Date	: 2018.06.09
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/brice_strongmend/qey_village03/100_fisherman_barbarian_strongmend_garbled_gm_e474cb9f.mp3", "Hmmmm... I wonder, do I owe you any coin?  I sure hope not!", "", 423725313, 410589606, Spawn)
end