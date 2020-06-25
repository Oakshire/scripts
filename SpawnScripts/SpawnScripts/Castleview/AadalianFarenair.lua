--[[
	Script Name	: SpawnScripts/Castleview/AadalianFarenair.lua
	Script Purpose	: Aadalian Farenair 
	Script Author	: Scatman
	Script Date	: 2009.10.02
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gm_755db2c3.mp3", "garbled text not to be translated", "", 2766992983, 3224256482)
end