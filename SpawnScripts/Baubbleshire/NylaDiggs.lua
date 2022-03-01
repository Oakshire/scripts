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
	local choice = math.random(1,4)

	if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/100_barkeep_deeppockets_multhail1_b497dcb7.mp3", "My name is Deeppockets.  Pleased to meet you, I am!  Perhaps we'll talk again some day!", "", 3221951518, 4136363260, Spawn)
	--	PlayFlavor(NPC, "", "Might I interest you in some meat and cheese to go with that tall glass of ale?", "shrug", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/100_barkeep_deeppockets_multhail1_b497dcb7.mp3", "My name is Deeppockets.  Pleased to meet you, I am!  Perhaps we'll talk again some day!", "", 3221951518, 4136363260, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/100_barkeep_deeppockets_callout_d2d77b95.mp3", "Come over and meet one of the most famous brewmasters in Qeynos!", "", 2446853968, 3962612908, Spawn)
		--PlayFlavor(NPC, "", "The best part about this job is all the extra coin I get.", "wink", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/100_barkeep_deeppockets_callout_d2d77b95.mp3", "Come over and meet one of the most famous brewmasters in Qeynos!", "", 2446853968, 3962612908, Spawn)
	else
	end
end
--[[if not HasLanguage(Spawn, 1) then
	local choice = math.random(1, 2)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_garbled_gf_54e55451.mp3", "garbled text not to be translated", "", 1486303618, 2371451914, Spawn, 1)
	else
		PlayFlavor(NPC, "voiceover/english/halfling_base_1/ft/halfling/halfling_base_1_1_garbled_gf_823f1021.mp3", "garbled text not to be translated", "", 3051197299, 2401133915, Spawn, 1)
	end
	elseif HasLanguage(Spawn, 1) then
	PlayFlavor(NPC, "voiceover/english/optional3/barbarian_outland/ft/barbarian/barbarian_outland_1_aggro_gf_5cbe779b.mp3", "Enemies approach!", "", 991095436, 863644706, Spawn)
	end
end

--[[
if not HasLanguage(Spawn, 1) then  -- IF PLAYER DOESN'T SPEAK HALASIAN THEN HE WILL HEAR THOSE VOICEOVERS.
		local choice = math.random(1, 2)
		if choice == 1  then
          PlayFlavor(NPC, "voiceover/english/optional3/barbarian_outland/ft/barbarian/barbarian_outland_1_garbled_gf_b80c3123.mp3", "Asfkher van baed rijs prakti kjen", "", 3736519483, 298405430, Spawn, 1)
                else
          PlayFlavor(NPC, "voiceover/english/optional3/barbarian_outland/ft/barbarian/barbarian_outland_1_garbled_gf_b0cb46d4.mp3", "Neit te geb ruiken, wat weg hout u hetten", "", 3553301683, 4073612943, Spawn, 1)
          end
       elseif HasLanguage(Spawn, 1) then
               local choice = math.random(1, 2)
               if choice == 1  then
            PlayFlavor(NPC, "voiceover/english/optional3/barbarian_outland/ft/barbarian/barbarian_outland_1_aggro_gf_5cbe779b.mp3", "Enemies approach!", "", 991095436, 863644706, Spawn)
          else
              