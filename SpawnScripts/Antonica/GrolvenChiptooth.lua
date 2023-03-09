--[[
    Script Name    : SpawnScripts/Antonica/GrolvenChiptooth.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.17 04:06:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	AddTimer(NPC, 6000, "waypoints")
end

function Garbled(NPC,Spawn)
  	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_3_garbled_2f8caa7b.mp3", "Krovel grarggt ereverrrn", "", 1122929283, 3658577306, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_3_garbled_fe1eedd8.mp3", "Rrrrevvvvnarrr    jahht      ttekkkman", "", 1645430326, 4164358721, Spawn, 18)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_3_garbled_fad67c0f.mp3", "Grrrolven brakth kerrtt", "", 2388782747, 150543218, Spawn, 18)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_3_garbled_3eefc118.mp3", "Vologrrren  aggart   renevenn", "", 397065851, 1047274840, Spawn, 18)
      end     
end

 function aggro(NPC,Spawn)   
    if not HasLanguage(Spawn,18 )then
    Garbled(NPC,Spawn)
    else
 	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_3_aggro_eb691f84.mp3", "Kill it!  Kill it!", "", 2374241847, 3459468567, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_3_aggro_6b15057.mp3", "You gonna die so fast!", "", 2350648774, 622465898, Spawn, 18)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_3_aggro_a30c4f9d.mp3", "To arms!", "", 2661067862, 2199552110, Spawn, 18)
        elseif choice == 4 then
 		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_1_aggro_6b15057.mp3", "You gonna die so fast!", "", 1562704963, 4195642460, Spawn, 18)
       end
       AddTimer(NPC,15000,"FifteenCall")
    end
end    

function FifteenCall(NPC,Spawn)
    if math.random(0,100)<=30 then
     if not HasLanguage(Spawn,18 )then
    Garbled(NPC,Spawn)
    else       
      local choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_3_everyfifteenseconds_m_988fcd6a.mp3", "I will tear you apart!", "", 3850483612, 779825488, Spawn, 18)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_3_everyfifteenseconds_m_847d6a42.mp3", "I'll rip you up!", "", 1316436320, 319871230, Spawn, 18)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional5/gnoll_base_2/ft/gnoll/gnoll_base_2_1_battle_m_5c7913bb.mp3", "Bah!  You smell horrible!", "", 687847219, 3365844906, Spawn, 18)        end
    end
    end
    if IsAlive(NPC)then
    AddTimer(NPC,15000,"FifteenCall")
    end
end   


function death(NPC,Spawn)
    if not HasLanguage(Spawn,18 )then
    Garbled(NPC,Spawn)
    else
        local choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_3_death_54a66dcc.mp3", "You gonna pay for that.", "", 4273480118, 3094167241, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_3_death_28e36f9f.mp3", "That one died.", "", 3831080059, 4019739051, Spawn, 18)
        elseif choice == 3 then
  		PlayFlavor(NPC, "voiceover/english/optional5/gnoll_base_2/ft/gnoll/gnoll_base_2_1_death_7cbd3c71.mp3", "I'll rip your throat open!", "", 134141978, 4165685331, Spawn, 18)
       end
    end
end

function victory(NPC,Spawn)
        if  HasLanguage(Spawn,18 )then
        local choice = MakeRandomInt(1,3)
	    if choice == 1 then
	    PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_3_victory_d3093859.mp3", "For you then Qeynos!", "", 3698260724, 2781542733, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_3_victory_1ee5a435.mp3", "Now it's time to ruin your lands.", "", 3136436170, 378451446, Spawn, 18)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional5/gnoll_base_2/ft/gnoll/gnoll_base_2_1_victory_8e18fe38.mp3", "Your fight is hopeless!", "", 2306110016, 2442076674, Spawn, 18)
        end
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


