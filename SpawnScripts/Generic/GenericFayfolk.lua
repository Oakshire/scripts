--[[
	Script Name	: SpawnScripts/Generic/GenericFayfolk.lua
	Script Purpose	: Any spawn that speaks Fayfolk
	Script Author	: Scatman
	Script Date	: 2009.10.08
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function fayfolk_healthchanged(NPC, Spawn)
	--if HasLanguage(Spawn, Fayfolk) then
	--else
		SpeakGarbledFayfok(NPC, Spawn)
	--end
end

function death(NPC, Spawn)
end

function SpeakGarbledFayfok(NPC, Spawn)
	local choice = math.random(1, 4)
	if math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_garbled_e858f993.mp3", "Tawaneee   follahh    dilifilongia   avee", "", 677789876, 1792673679, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_garbled_dfa9e7d9.mp3", "Amamooenoo  illysavah   leetah", "", 1070184369, 1800384485, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_garbled_29e4606e.mp3", "Peelahha misialloniassaa laliallasala", "", 4241242710, 1388449419, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_garbled_628bdbdb.mp3", "Meraania suvalas itresteien", "", 2333386122, 320322749, Spawn)
	end
end
