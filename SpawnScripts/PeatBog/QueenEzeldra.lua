--[[
    Script Name    : SpawnScripts/PeatBog/QueenEzeldra.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.27 10:05:16
    Script Purpose : 
                   : 
--]]

 function aggro(NPC,Spawn)   
        if not HasLanguage(Spawn,23 )then
        Garbled(NPC,Spawn)
    else
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_darkflight/ft/fairy/fairy_darkflight_1_aggro_8be1ad52.mp3", "Dreams of death to you!", "", 3202933072, 210037574, Spawn, 23)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_darkflight/ft/fairy/fairy_darkflight_1_aggro_8d59fd03.mp3", "We are the terror you will never forget!", "", 2533792944, 1310429329, Spawn, 23)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_darkflight/ft/fairy/fairy_darkflight_1_aggro_d061d749.mp3", "Never fear... No... Wait... Do!", "", 1779062474, 2585771660, Spawn, 23)
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
  
   
function death(NPC,Spawn)
         if not HasLanguage(Spawn,23 )then
        Garbled(NPC,Spawn)
    else
        local choice = MakeRandomInt(1,2)

	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_darkflight/ft/fairy/fairy_darkflight_1_death_f67ebee2.mp3", "How did you do that?", "", 3830312587, 474588981, Spawn, 23)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/fairy_darkflight/ft/fairy/fairy_darkflight_1_death_2032180a.mp3", "We need a hero!", "", 1641018494, 2750735704, Spawn, 23)
        end
    end
end
