--[[
    Script Name    : SpawnScripts/PeatBog/BogFairy.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.27 09:05:01
    Script Purpose : For Voiceovers
                   : 
--]]

 function aggro(NPC,Spawn)   
if math.random(1,100)<60 then
        if not HasLanguage(Spawn,23 )then
        Garbled(NPC,Spawn)
    else
 	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_aggro_770ba678.mp3", "Now why would you want to hurt lil' ol' me?", "", 3814000908, 1517813575,Spawn, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_darkflight/ft/fairy/fairy_darkflight_1_aggro_8d59fd03.mp3", "We are the terror you will never forget!", "", 2533792944, 1310429329, Spawn, 23)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_base_1/ft/fairy/fairy_base_1_1_aggro_e578d730.mp3", "Death on small wings!", "", 1415967459, 2028651441, Spawn, 23)
        end
    end
end    
end
    
function Garbled(NPC,Spawn)
 	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_garbled_628bdbdb.mp3", "Meraania suvalas itresteien", "", 711889774, 2079504251, Spawn, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_garbled_e858f993.mp3", "Tawaneee   follahh    dilifilongia   avee", "", 2527230882, 3520925768,Spawn, 23)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_garbled_29e4606e.mp3", "Peelahha misialloniassaa laliallasala", "", 4233892159, 3471050504, Spawn, 23)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_bog/ft/fairy/fairy_bog_1_garbled_dfa9e7d9.mp3", "Amamooenoo  illysavah   leetah", "", 2254044711, 2481645116, Spawn, 23)
    end 
 end 
  
function healthchanged(NPC, Spawn)  
    if GetHP(NPC) < GetMaxHP(NPC) * 0.55 then
     if GetHP(NPC) > GetMaxHP(NPC) * 0.45 then
    if not HasLanguage(Spawn,23 )then
        Garbled(NPC,Spawn)
    else    
 	local choice = MakeRandomInt(1,2)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_darkflight/ft/fairy/fairy_darkflight_1_halfhealth_9cf4a8d0.mp3", "Ouch! Not in the wing!", "", 1202960009, 480268964, Spawn, 23)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_darkflight/ft/fairy/fairy_darkflight_1_halfhealth_270ee5ed.mp3", "Great. I just had that wing mended!", "", 2029868249, 730589290, Spawn, 23)
	end
    end
    end
end
end



function death(NPC,Spawn)
 if math.random(1,100)<60  then
         if not HasLanguage(Spawn,23 )then
        Garbled(NPC,Spawn)
    else
        local choice = MakeRandomInt(1,3)

	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_darkflight/ft/fairy/fairy_darkflight_1_death_f67ebee2.mp3", "How did you do that?", "", 3830312587, 474588981, Spawn, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_base_2/ft/fairy/fairy_base_2_1_death_85ef3300.mp3", "No!  That was my friend!", "", 3692250021, 2304681984, Spawn, 23)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_darkflight/ft/fairy/fairy_darkflight_1_death_2032180a.mp3", "We need a hero!", "", 1641018494, 2750735704, Spawn, 23)
        end
    end
end
end
