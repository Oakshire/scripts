--[[
    Script Name    : SpawnScripts/Antonica/GrolvenChiptooth.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.17 04:06:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
end


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
        if  not HasLanguage(Spawn,18 )then
            		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_garbled_fad67c0f.mp3", "Grrrolven brakth kerrtt", "", 2579932316, 1973717234, Spawn, 18)
        else
    		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_victory_e4520926.mp3", "Packmate not happy with scrawny catch.", "", 1321865956, 173648139, Spawn, 18)
    end
end

function respawn(NPC)
	spawn(NPC)
end


function waypoints(NPC)
	MovementLoopAddLocation(NPC, -1485.4, -2.18, 756.99, 2, 15)
	MovementLoopAddLocation(NPC, -1498.4, -0.87, 771.42, 2, 0)
	MovementLoopAddLocation(NPC, -1500.22, 0.09, 777.13, 2, 0)
	MovementLoopAddLocation(NPC, -1494.69, 2.61, 787.56, 2, 15)
	MovementLoopAddLocation(NPC, -1487.47, 4.22, 797.39, 2, 0)
	MovementLoopAddLocation(NPC, -1472.79, 2.76, 785.23, 2, 15)
	MovementLoopAddLocation(NPC, -1462.85, -1.71, 769.33, 2, 0)
	MovementLoopAddLocation(NPC, -1445.71, -6.33, 746.03, 2, 15)
	MovementLoopAddLocation(NPC, -1419.3, -8.78, 723.46, 2, 0)
	MovementLoopAddLocation(NPC, -1402.95, -8.92, 714.61, 2, 15)
	MovementLoopAddLocation(NPC, -1389.29, -8.01, 721.38, 2, 0)
	MovementLoopAddLocation(NPC, -1379.6, -8.59, 735.63, 2, 0)
	MovementLoopAddLocation(NPC, -1383.25, -6.7, 759.02, 2, 15)
	MovementLoopAddLocation(NPC, -1385.79, -2.73, 775.23, 2, 0)
	MovementLoopAddLocation(NPC, -1384.52, -1.69, 790.34, 2, 45)
	MovementLoopAddLocation(NPC, -1380.96, -1.73, 797.34, 2, 0)
	MovementLoopAddLocation(NPC, -1377.02, -1.77, 802.03, 2, 0)
	MovementLoopAddLocation(NPC, -1380.38, -2.21, 808.54, 2, 0)
	MovementLoopAddLocation(NPC, -1390.2, -2.84, 812.84, 2, 0)
	MovementLoopAddLocation(NPC, -1400.42, -3.88, 811.53, 2, 0)
	MovementLoopAddLocation(NPC, -1407.98, -3.65, 799.56, 2, 15)
	MovementLoopAddLocation(NPC, -1426.64, -2.4, 791.58, 2, 0)
	MovementLoopAddLocation(NPC, -1444.5, 0.88, 795.04, 2, 0)
	MovementLoopAddLocation(NPC, -1471.39, 3.08, 787.18, 2, 15)
	MovementLoopAddLocation(NPC, -1454.51, -4.26, 750.15, 2, 0)
	MovementLoopAddLocation(NPC, -1453.61, -5.43, 741.06, 2, 15)
	MovementLoopAddLocation(NPC, -1461.97, -4.36, 737.93, 2, 0)
	MovementLoopAddLocation(NPC, -1471.17, -3.13, 734.66, 2, 0)
	MovementLoopAddLocation(NPC, -1488.19, -1.17, 736.33, 2, 15)
end


