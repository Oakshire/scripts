--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll2.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.10 11:07:00
    Script Purpose : Sabertooth/Blackburrow Gnoll Callouts v2
                   : 
--]]
local HealthCallout = false

-- UNKNOWN LANGUAGE SCRIPT

function Garbled(NPC,Spawn)
  	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_2_garbled_2f8caa7b.mp3", "Krovel grarggt ereverrrn", "", 359163231, 374835342, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_2_garbled_fe1eedd8.mp3", "Rrrrevvvvnarrr    jahht      ttekkkman", "", 2011900099, 1932209000, Spawn, 18)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_2_garbled_fad67c0f.mp3", "Grrrolven brakth kerrtt", "", 4029243996, 3718919525, Spawn, 18)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_2_garbled_3eefc118.mp3", "Vologrrren  aggart   renevenn", "", 827007456, 1608492994, Spawn, 18)
      end     
end


-- AGGRO SCRIPT
 function aggro(NPC,Spawn)   
    if not HasLanguage(Spawn,18 )then
    Garbled(NPC,Spawn)
    else
 	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_2_aggro_6b15057.mp3", "You gonna die so fast!", "", 2476105225, 1221891040, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_2_aggro_eb691f84.mp3", "Kill it!  Kill it!", "", 543574223, 1681470986, Spawn, 18)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_2_aggro_a30c4f9d.mp3", "To arms!", "", 3275400181, 1790039282, Spawn, 18)
        elseif choice == 4 then
 		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_aggro_fda03a16.mp3", "Spin, weave, dodge, attack!!!", "", 1516290828, 3143203494, Spawn, 18)
       end
    AddTimer(NPC,15000,"FifteenCall")
    end
end    

-- RANDOM CALL IN COMBAT SCRIPT

function FifteenCall(NPC,Spawn)
if IsInCombat(NPC)==true then
if IsAlive(NPC)== true then
 if IsInCombat(NPC)==true then
    if math.random(0,100)<=30 then
     if not HasLanguage(Spawn,18 )then
    Garbled(NPC,Spawn)
    else       
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_2_everyfifteenseconds_56c0a1a8.mp3", "Nothing's tougher than a gnoll!", "", 287386738, 3149239101, Spawn, 18)
    end
    end
    if IsAlive(NPC)then
    AddTimer(NPC,15000,"FifteenCall")
    end
end  
end
end
end

-- HALF HEALTH SCRIPT

function healthchanged(NPC, Spawn)  
    if HealthCallout == false then
    if GetHP(NPC) < GetMaxHP(NPC) * 0.55 then
     if GetHP(NPC) > GetMaxHP(NPC) * 0.45 then
        HealthCallout = true
        AddTimer(NPC,10000,"HealthReset")
    if not HasLanguage(Spawn,18 )then
        Garbled(NPC,Spawn)
    else    
      local choice = MakeRandomInt(1,2)
	    if choice == 1 then
	    PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_2_halfhealth_6bce9cd3.mp3", "You're stronger than me.", "", 1682367154, 2729589996, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_2_halfhealth_cac53bc5.mp3", "I must fight for Sabertooth pride.", "", 3834044176, 432685074, Spawn, 18)
        end
    end
    end
end
end
end

function HealthReset (NPC)
    HealthCallout = false
end

-- ON DEATH SCRIPT

function death(NPC,Spawn)
    if math.random(0,100)<=60 then
    if not HasLanguage(Spawn,18 )then
    Garbled(NPC,Spawn)
    else
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_2_aggro_6b15057.mp3", "You gonna die so fast!", "", 2476105225, 1221891040, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_2_death_28e36f9f.mp3", "That one died.", "", 1959590821, 1866133221, Spawn, 18)
        end
    end
end
end

-- KILLED TARGET SCRIPT

function victory(NPC,Spawn)
        if  HasLanguage(Spawn,18 )then
      local choice = MakeRandomInt(1,2)
	    if choice == 1 then
	    PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_2_victory_e99dd57c.mp3", "Who gonna die next?", "", 2852356073, 784092016, Spawn, 18)
         elseif choice == 2 then
 		PlayFlavor(NPC, "voiceover/english/gnoll_sabertooths/ft/gnoll/gnoll_sabertooths_2_victory_1ee5a435.mp3", "Now it's time to ruin your lands.", "", 3327307554, 1657108613, Spawn, 18)
  end
end
end