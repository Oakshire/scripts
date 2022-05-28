--[[
    Script Name    : SpawnScripts/PeatBog/OverseerDentfang.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.27 11:05:59
    Script Purpose : 
                   : 
--]]

 function aggro(NPC,Spawn)   
        if not HasLanguage(Spawn,18 )then
 	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_garbled_2f8caa7b.mp3", "Krovel grarggt ereverrrn", "", 3999652656, 427507713, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_garbled_fe1eedd8.mp3", "Rrrrevvvvnarrr    jahht      ttekkkman", "", 1674950709, 3936377565, Spawn, 18)
        else
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_garbled_fad67c0f.mp3", "Grrrolven brakth kerrtt", "", 2579932316, 1973717234, Spawn, 18)
      end  
    else
 	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_aggro_75cd5d19.mp3", "Not allowed here!", "", 1292107958, 2335134714, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_aggro_d81be55c.mp3", "Bite! Show sharp teeth!", "", 612586564, 102929785, Spawn, 18)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_aggro_fda03a16.mp3", "Spin, weave, dodge, attack!!!", "", 1347636574, 484324781, Spawn, 18)
        end
    end
end    

    
function death(NPC,Spawn)
        if not HasLanguage(Spawn,18 )then
 	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_garbled_2f8caa7b.mp3", "Krovel grarggt ereverrrn", "", 3999652656, 427507713, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_garbled_fe1eedd8.mp3", "Rrrrevvvvnarrr    jahht      ttekkkman", "", 1674950709, 3936377565, Spawn, 18)
        else
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_garbled_fad67c0f.mp3", "Grrrolven brakth kerrtt", "", 2579932316, 1973717234, Spawn, 18)
      end  
    else
        local choice = MakeRandomInt(1,2)

	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_death_9c1f07cb.mp3", "Another member of the pack down!", "", 3426629421, 3660282518, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_death_138a3058.mp3", "That one never mate!", "", 3110437136, 1206351893, Spawn, 18)
        end
    end
end

function victory(NPC,Spawn)
        if  HasLanguage(Spawn,18 )then
    		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_victory_e4520926.mp3", "Packmate not happy with scrawny catch.", "", 1321865956, 173648139, Spawn, 18)
    end
end