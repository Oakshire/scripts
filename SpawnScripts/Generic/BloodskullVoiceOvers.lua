--[[
    Script Name    : SpawnScripts/Generic/BloodskullVoiceOvers.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.29 06:05:10
    Script Purpose : VoiceOvers for Bloodskull Orcs
    Script Notes	: Most of PlayFlavors are here, but some might be still missing.
--]]

function generic_aggro(NPC, Spawn)
	if not HasLanguage(Spawn, 17) then
	  local choice = MakeRandomInt(1, 4)
	  if choice == 1 then
	  PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_3_garbled_cd184493.mp3", "Purzt gort NARGAAAAA!!!  Durzog carb!", "", 2220489474, 2559535598, Spawn, 17)
	  elseif choice == 2 then
	  PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_3_garbled_73b2c225.mp3", "Gretz kagh   lotgg    vep   nabrecht", "", 3695467555, 2248073067, Spawn, 17)
	  elseif choice == 3 then
	  PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_3_garbled_95912cdc.mp3", "Harkt brecht ogglot kressht", "", 3122442519, 1857985331, Spawn, 17)
	  else
	  PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_3_garbled_d552223c.mp3", "GEKKKKnoh!   Ezzrrt sha  kemm.", "", 2539179056, 4238191031, Spawn, 17)
      end
	elseif HasLanguage(Spawn, 17) then
	   	  local choice = MakeRandomInt(1, 11)
	      if choice == 1 then
	  PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_2_aggro_d0a966d4.mp3", "Sound the alarm. Destroy all trespassers!", "", 76678208, 2300069441, Spawn)
	      elseif choice == 2 then
	 PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_3_aggro_b894f40b.mp3", "You should have left when you had a chance.", "", 3142313914, 3287327323, Spawn)
	    elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_1_aggro_5de6bb7b.mp3",  "Time to meet your end, intruder.", "", 833302635, 3961810419, Spawn)
		elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_3_aggro_5de6bb7b.mp3", "Time to meet your end, intruder.", "", 2083305627, 1879227032, Spawn)
		elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_1_aggro_d0a966d4.mp3", "Sound the alarm. Destroy all trespassers!", "", 1124522499, 4127493428, Spawn)
		elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_2_aggro_5de6bb7b.mp3", "Time to meet your end, intruder.", "", 823934444, 77190410, Spawn)
		elseif choice == 7 then
		PlayFlavor(NPC, "voiceover/english/orc_bloodskulls/ft/orc/orc_bloodskulls_1_aggro_4eeee83c.mp3", "Intruders! Destroy them all!", "", 2467546968, 994468021, Spawn)
        elseif choice == 8 then
		PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_1_aggro_b894f40b.mp3", "You should have left when you had a chance.", "",  915199820, 740122225, Spawn) 
		elseif choice == 9 then
		PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_3_aggro_d0a966d4.mp3", "Sound the alarm. Destroy all trespassers!", "",  3492339874, 709119625, Spawn)
		elseif choice == 10 then
		PlayFlavor(NPC, "voiceover/english/orc_bloodskulls/ft/orc/orc_bloodskulls_1_aggro_bb26f220.mp3", "Welcome to your death, lesser being!", "", 2816913393, 2318143908, Spawn)
		else
		PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_2_aggro_b894f40b.mp3", "You should have left when you had a chance.", "", 2631023901, 1839420543, Spawn)
		end
end
    end


function generic_healthchanged(NPC, Spawn)
         if HasLanguage(Spawn, 17) then
     local choice = MakeRandomInt(1, 5)
	  if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_2_halfhealth_31afd9f6.mp3", "I cannot hold them much longer.", "", 4118700490, 3502020368, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_3_halfhealth_20ae1cd6.mp3", "I will hold them.  Fall back and get us help!", "", 4233718966, 4228179784, Spawn)
	elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_1_halfhealth_20ae1cd6.mp3", "I will hold them.  Fall back and get us help!", "", 2221351395, 146054317, Spawn)
	elseif choice == 4 then
	PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_1_halfhealth_31afd9f6.mp3", "I cannot hold them much longer.", "", 2434159741, 156481330, Spawn)
	else
	PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_2_halfhealth_20ae1cd6.mp3", "I will hold them.  Fall back and get us help!", "", 4046732259, 2558873425, Spawn)
end
    end
        end

function generic_death(NPC, Spawn)
	if not HasLanguage(Spawn, 17) then
	  local choice = MakeRandomInt(1, 4)
	  if choice == 1 then
	  PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_3_garbled_cd184493.mp3", "Purzt gort NARGAAAAA!!!  Durzog carb!", "", 2220489474, 2559535598, Spawn, 17)
	  elseif choice == 2 then
	  PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_3_garbled_73b2c225.mp3", "Gretz kagh   lotgg    vep   nabrecht", "", 3695467555, 2248073067, Spawn, 17)
	  elseif choice == 3 then
	  PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_3_garbled_95912cdc.mp3", "Harkt brecht ogglot kressht", "", 3122442519, 1857985331, Spawn, 17)
	  else
	  PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_3_garbled_d552223c.mp3", "GEKKKKnoh!   Ezzrrt sha  kemm.", "", 2539179056, 4238191031, Spawn, 17)
	  end
	elseif HasLanguage(Spawn, 17) then
	  local choice = MakeRandomInt(1, 7)
	  if choice == 1 then
	  PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_3_death_ae9effde.mp3", "There are too many!  We must regroup.", "", 499973341, 621587596, Spawn)
	  elseif choice == 2 then
	  PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_1_death_d858b489.mp3", "Fall back and get us a shaman!", "", 2273163212, 358314594, Spawn)
	  elseif choice == 3 then
	  PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_2_death_d858b489.mp3", "Fall back and get us a shaman!", "", 2632081703, 612886477, Spawn)
	  elseif choice == 4 then
	  PlayFlavor(NPC, "voiceover/english/orc_bloodskulls/ft/orc/orc_bloodskulls_1_death_210e1586.mp3", "Back fools, there are too many!", "", 3732605097, 1182008177, Spawn)
	  elseif choice == 5 then
	  PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_1_death_ae9effde.mp3", "There are too many!  We must regroup.", "", 4093843501, 3691746658, Spawn)
	  elseif choice == 6 then
	  PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_3_death_d858b489.mp3", "Fall back and get us a shaman!", "", 1609404995, 653340701, Spawn)
	  else
	  PlayFlavor(NPC, "voiceover/english/orc_base_1/ft/orc/orc_base_1_2_death_ae9effde.mp3", "There are too many!  We must regroup.", "", 2958791307, 4082911060, Spawn)
     end
        end
		    end
			   