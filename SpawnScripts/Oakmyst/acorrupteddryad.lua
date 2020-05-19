--[[
	Script Name	: SpawnScripts/Oakmyst/acorrupteddryad.lua
	Script Purpose	: a corrupted dryad
	Script Author	: Scatman
	Script Date	: 2009.10.08
	Script Notes	: 
--]]

local spoke = false

function spawn(NPC)
	spoke = false
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function healthchanged(NPC, Spawn)
	local chance = math.random(0, 100)
	if chance <= 25 then
		local health_percent = GetHP(NPC) / GetMaxHP(NPC)
		if health_percent < 0.50 and spoke == false then
			spoke = true
			Speak(NPC, Spawn)
		end
	end
end

function death(NPC, Spawn)
	spoke = false
end

function Speak(NPC, Spawn)
	--if HasLanguage(Spawn, Fayfolk) then
		local choice = math.random(1, 2)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_halfhealth_87c4d551.mp3", "My blood will continue to taint this land. ", "", 4171401485, 1497569558, Spawn)
		else
			PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_halfhealth_f788c9f0.mp3", "My death only furthers my goals.", "", 4264087301, 2283544980, Spawn)
		end
	--[[else
		local choice = math.random(1, 4)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_garbled_e858f993.mp3", "Tawaneee   follahh    dilifilongia   avee", "", 677789876, 1792673679, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_garbled_dfa9e7d9.mp3", "Amamooenoo  illysavah   leetah", "", 1070184369, 1800384485, Spawn)
		elseif choice == 3 then
			PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_garbled_29e4606e.mp3", "Peelahha misialloniassaa laliallasala", "", 4241242710, 1388449419, Spawn)
		elseif choice == 4 then
			PlayFlavor(NPC, "voiceover/english/dryad_corrupted/ft/dryad/dryad_corrupted_1_garbled_628bdbdb.mp3", "Meraania suvalas itresteien", "", 2333386122, 320322749, Spawn)
		end
	end--]]
end