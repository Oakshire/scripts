--[[
	Script Name	: SpawnScripts/Castleview/ListalaniaVainederian.lua
	Script Purpose	: Listalania Vainederian 
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: Speak Koada'Dal
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 2)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gf_a002225a.mp3", "garbled text not to be translated", "", 3121965781, 2073270812, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/highelf_base_1/ft/highelf/highelf_base_1_1_garbled_gf_fde7b8f7.mp3", "garbled text not to be translated", "", 595061935, 2035542297, Spawn)
	end
end