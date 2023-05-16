--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.10 11:07:28
    Script Purpose : Basic Gnoll Callouts v1
                   : 
--]]
local HealthCallout = false --REDUCES Half-Health Spam
local CalloutTimer = false --REDUCES Callout Spam

function ResetTimer(NPC) -- 7 SECOND PAUSE BETWEEN VOs
    SetTempVariable(NPC, "CalloutTimer", "false")
end

function HealthReset (NPC)  -- SO HALF HEALTH DOESN'T SPAM
    SetTempVariable(NPC, "HealthCallout", "false")
end
    

function Garbled(NPC,Player)
  	local choice = MakeRandomInt(1,5)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_garbled_2f8caa7b.mp3", "Krovel grarggt ereverrrn", "", 3999652656, 427507713, Player, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_garbled_fe1eedd8.mp3", "Rrrrevvvvnarrr    jahht      ttekkkman", "", 1674950709, 3936377565, Player, 18)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_garbled_fad67c0f.mp3", "Grrrolven brakth kerrtt", "", 2579932316, 1973717234, Player, 18)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_garbled_3eefc118.mp3", "Vologrrren  aggart   renevenn", "", 3980060701, 1422372699, Player, 18)
        elseif choice == 5 then
 		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_garbled_2f8caa7b.mp3", "Krovel grarggt ereverrrn", "", 2385604574, 3717589402, Player, 18)
     end     
end

 function aggro(NPC,Player)   
    AddTimer(NPC,math.random(14000,31000),"FifteenCall")
    SetTempVariable(NPC, "CalloutTimer", "false")
if  GetTempVariable(NPC, "CalloutTimer")== "false" and math.random(0,100) <=75 and IsPlayer(Player) then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,10000,"ResetTimer")
    if not HasLanguage(Player,18 )then
    Garbled(NPC,Player)
    else
 	local choice = MakeRandomInt(1,8)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_aggro_75cd5d19.mp3", "Not allowed here!", "", 1292107958, 2335134714, Player, 18)
        elseif choice == 2 then
 		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_aggro_75cd5d19.mp3", "Not allowed here!", "", 1266801616, 137145352, Player, 18)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_aggro_75cd5d19.mp3", "Not allowed here!", "", 942309136, 3095091783, Player, 18)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_aggro_d81be55c.mp3", "Bite! Show sharp teeth!", "", 612586564, 102929785, Player, 18)
        elseif choice == 5 then
 		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_aggro_d81be55c.mp3", "Bite! Show sharp teeth!", "", 3848163428, 3270249405, Player, 18)
        elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_aggro_d81be55c.mp3", "Bite! Show sharp teeth!", "", 3276849474, 2846177216, Player, 18)
        elseif choice == 7 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_aggro_fda03a16.mp3", "Spin, weave, dodge, attack!!!", "", 1347636574, 484324781, Player, 18)
        elseif choice == 8 then
 		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_aggro_fda03a16.mp3", "Spin, weave, dodge, attack!!!", "", 1516290828, 3143203494, Player, 18)
 end
    end
end   
end

-- Doesn't Work PlayFlavor(NPC, "voiceover/english/optional5/gnoll_base_2/ft/gnoll/gnoll_base_2_1_aggro_959e4683.mp3", "Intruder!", "", 1672215946, 3521592402, Player, 18)


function death(NPC,Player)
 if  GetTempVariable(NPC, "CalloutTimer")== "false" and IsPlayer(Player) then
    if math.random(0,100)<=35 then
    if not HasLanguage(Player,18 )then
    Garbled(NPC,Player)
    else
        local choice = MakeRandomInt(1,5)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_death_9c1f07cb.mp3", "Another member of the pack down!", "", 782807197, 154562007, Player, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_death_138a3058.mp3", "That one never mate!", "", 3110437136, 1206351893, Player, 18)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_death_138a3058.mp3", "That one will never mate!", "", 216068291, 510666258, Player, 18)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_death_9c1f07cb.mp3", "Another member of the pack down!", "", 3426629421, 3660282518, Player, 18)
        elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_death_9c1f07cb.mp3", "Another member of the pack down!", "", 869495756, 2144000535, Player, 18)
     end
    end
end
end
end

-- DOES NOT WORK		PlayFlavor(NPC, "voiceover/english/optional5/gnoll_base_2/ft/gnoll/gnoll_base_2_1_death_7cbd3c71.mp3", "I'll rip your throat open!", "", 134141978, 4165685331, Spawn, 18)

function FifteenCall(NPC,Player)
if IsInCombat(NPC)==true then
 if IsAlive(NPC)  and  GetTempVariable(NPC, "CalloutTimer")== "false" and math.random(0,100) <=33 and IsPlayer(Player) then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,10000,"ResetTimer")
    if not HasLanguage(Player,18 )then
    Garbled(NPC,Player)
    else       
      local choice = MakeRandomInt(1,4)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_everyfifteenseconds_m_dbbe969a.mp3", "Grrrrrrrrrr! Yip!", "", 3107536729, 1468959623, Player, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_everyfifteenseconds_7c69417c.mp3", "Nip at their heels when they flee!", "", 4292535613, 1359167400, Player, 18)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_battle_m_2b13fb2e.mp3", "For the pack!", "", 2513141586, 2807818416, Player, 18)
        elseif choice == 4 then
        if GetClass(Player) >=21 and GetClass(Player) <=30 then       
        PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_maomage_8fb8565d.mp3", "Yip! Watch out for their magic!", "", 1674162517, 4259121980, Spawn, 18)
        else
        PlayFlavor(NPC, "voiceover/english/optional5/gnoll_base_2/ft/gnoll/gnoll_base_2_1_battle_m_5c7913bb.mp3", "Bah!  You smell horrible!", "", 687847219, 3365844906, Spawn, 18)        
        end
    end
    end
    if IsAlive(NPC)then
    AddTimer(NPC,math.random(14000,31000),"FifteenCall")
    end
end  
end
end

function healthchanged(NPC, Player)  
    if  GetTempVariable(NPC, "HealthCallout")== "false" and IsPlayer(Player) then
    if GetHP(NPC) < GetMaxHP(NPC) * 0.55 and GetHP(NPC) > GetMaxHP(NPC) * 0.45 then
        SetTempVariable(NPC, "HealthCallout", "true")
        AddTimer(NPC,10000,"HealthReset")
        if not HasLanguage(Player,18 )then
        Garbled(NPC,Player)
        else    
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_halfhealth_d093de2d.mp3", "Yip yip yip!", "", 166674284, 1395857397, Player, 18)
        end
    end
end
end




function victory(NPC,Player)
     if IsPlayer(Player)and  not HasLanguage(Player,18 )then
        Garbled(NPC,Player)
    elseif  IsPlayer(Player) and HasLanguage(Player,18 )then
        local choice = MakeRandomInt(1,3)
	    if choice == 1 then
	    PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_victory_e4520926.mp3", "Packmate not happy with scrawny catch.", "", 1321865956, 173648139, Player, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional5/gnoll_base_2/ft/gnoll/gnoll_base_2_1_victory_8e18fe38.mp3", "Your fight is hopeless!", "", 2306110016, 2442076674, Player, 18)
        elseif choice == 3 then
    	PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_victory_f225e591.mp3", "One to bring back to lair!", "", 3397285495, 2608729760,Player,18)
    end
end
end