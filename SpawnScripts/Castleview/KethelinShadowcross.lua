--[[
	Script Name	: SpawnScripts/Castleview/KethelinShadowcross.lua
	Script Purpose	: Kethelin Shadowcross 
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: Edited calling with Daylena Telanthis - Dorbin 4/18/2022
--]]
dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if GetFactionAmount(Spawn,11) <0 then
     	FaceTarget(NPC, Spawn)
        FactionChecking(NPC, Spawn, faction)
        else       
	if math.random(0, 100) <= 22 then
		TalkCheck(NPC, Spawn)
	end
end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	if GetFactionAmount(Spawn,11) <0 then
     	FaceTarget(NPC, Spawn)
        FactionChecking(NPC, Spawn, faction)
        else       
	FaceTarget(NPC, Spawn)
	TalkHail(NPC, Spawn)
end
end

function TalkCheck(NPC, Spawn)
	local choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_1a077d47.mp3", "The Qeynos Guard blindly strikes at the darkness rather than see the opportunity for redemption that lies within even the most lost of us.", "", 970013852, 575367438, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_3af79ac9.mp3", "While their fellow citizens struggle against the tides of evil, the Tunarian Alliance worries itself with the plight of soulless plants and animals.", "", 3394764444, 3959777727, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_87dd538b.mp3", "Were they to encounter a god, the Concordium would drop their staves and bow before the might of a true power.", "", 3531845971, 679110479, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_d1a0f4da.mp3", "The Celestial Watch preserves the rituals of servitude to the gods so that all might experience through worship the return of the ancient deities.", "", 3161458185, 1498528167, Spawn)
	end
    end


function TalkHail(NPC, Spawn)

	local choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_1a077d47.mp3", "The Qeynos Guard blindly strikes at the darkness rather than see the opportunity for redemption that lies within even the most lost of us.", "", 970013852, 575367438, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_3af79ac9.mp3", "While their fellow citizens struggle against the tides of evil, the Tunarian Alliance worries itself with the plight of soulless plants and animals.", "", 3394764444, 3959777727, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_87dd538b.mp3", "Were they to encounter a god, the Concordium would drop their staves and bow before the might of a true power.", "", 3531845971, 679110479, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_celestialwatch/ft/eco/good/highelf_eco_good_celestialwatch_hail_gm_d1a0f4da.mp3", "The Celestial Watch preserves the rituals of servitude to the gods so that all might experience through worship the return of the ancient deities.", "", 3161458185, 1498528167, Spawn)
	end
    
end