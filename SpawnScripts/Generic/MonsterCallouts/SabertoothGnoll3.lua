--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll3.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.10 11:07:56
    Script Purpose : Sabertooth/Blackburrow Gnoll Callouts v3
                   : 
--]]

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
if IsInCombat(NPC)==true then
if IsAlive(NPC)==true then
  if IsInCombat(NPC)==true then
   if math.random(0,100)<=30 then
     if not HasLanguage(Spawn,18 )then
    Garbled(NPC,Spawn)
    else       
      local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_3_everyfifteenseconds_m_988fcd6a.mp3", "I will tear you apart!", "", 3850483612, 779825488, Spawn, 18)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_3_everyfifteenseconds_m_847d6a42.mp3", "I'll rip you up!", "", 1316436320, 319871230, Spawn, 18)
        end
    end
    end
    if IsAlive(NPC)then
    AddTimer(NPC,15000,"FifteenCall")
    end
end   
end
end
end

function death(NPC,Spawn)
    if math.random(0,100)<=60 then
    if not HasLanguage(Spawn,18 )then
    Garbled(NPC,Spawn)
    else
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_3_death_54a66dcc.mp3", "You gonna pay for that.", "", 4273480118, 3094167241, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_3_death_28e36f9f.mp3", "That one died.", "", 3831080059, 4019739051, Spawn, 18)
        end
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
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_3_victory_e99dd57c.mp3", "Who gonna die next?", "", 2679377087, 3844588159, Spawn, 18)
       end
    end
end