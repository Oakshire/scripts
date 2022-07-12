--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll1.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.10 11:07:22
    Script Purpose : Sabertooth/Blackburrow Gnoll Callouts v1
                   : 
--]]

function Garbled(NPC,Spawn)
  	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_1_garbled_2f8caa7b.mp3", "Krovel grarggt ereverrrn", "", 2454882013, 434276853, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_1_garbled_fe1eedd8.mp3", "Rrrrevvvvnarrr    jahht      ttekkkman", "", 3407045914, 798891256, Spawn, 18)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_1_garbled_fad67c0f.mp3", "Grrrolven brakth kerrtt", "", 2692549712, 1373836181, Spawn, 18)
          elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_1_garbled_3eefc118.mp3", "Vologrrren  aggart   renevenn", "", 2656272022, 3945298691, Spawn, 18)
 end     
end

 function aggro(NPC,Spawn)   
    if not HasLanguage(Spawn,18 )then
    Garbled(NPC,Spawn)
    else
 	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_1_aggro_a30c4f9d.mp3", "To arms!", "", 3639876864, 358358864, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_battle_m_2b13fb2e.mp3", "For the pack!", "", 2513141586, 2807818416, Spawn, 18)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_aggro_75cd5d19.mp3", "Not allowed here!", "", 1292107958, 2335134714, Spawn, 18)
        elseif choice == 4 then
 		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_1_aggro_6b15057.mp3", "You gonna die so fast!", "", 1562704963, 4195642460, Spawn, 18)
       end
    end
end    


function death(NPC,Spawn)
    if math.random(0,100)<=75 then
    if not HasLanguage(Spawn,18 )then
    Garbled(NPC,Spawn)
    else
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_1_death_54a66dcc.mp3", "You gonna pay for that.", "", 225817702, 4152116120, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_1_death_28e36f9f.mp3", "That one died.", "", 3168760203, 1628996126, Spawn, 18)
        end
    end
end
end

function victory(NPC,Spawn)
        if  HasLanguage(Spawn,18 )then
       local choice = MakeRandomInt(1,2)
	    if choice == 1 then		
	    PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_1_victory_e99dd57c.mp3", "Who gonna die next?", "", 3154262772, 3358379714, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_1_victory_d3093859.mp3", "For you then Qeynos!", "", 3731181629, 3720275746, Spawn, 18)
        end
    end
end