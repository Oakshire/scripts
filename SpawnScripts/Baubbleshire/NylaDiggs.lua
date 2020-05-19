--[[
	Script Name	: SpawnScripts/Baubbleshire/NylaDiggs.lua
	Script Purpose	: Nyla Diggs 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: Speaks Stout.
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
		PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_garbled_gf_54e55451.mp3", "garbled text not to be translated", "", 1486303618, 2371451914, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_garbled_gf_823f1021.mp3", "garbled text not to be translated", "", 3051197299, 2401133915, Spawn)
	end
end