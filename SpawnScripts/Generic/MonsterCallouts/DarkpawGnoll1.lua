--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/DarkpawGnoll1.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.13 05:07:50
    Script Purpose : Antonica's Darkpaw Gnoll Callouts
                   : 
--]]
local HealthCallout = false
local MAGE = 21 
local SORCERER = 22 
local WIZARD = 23 
local WARLOCK = 24 
local ENCHANTER = 25 
local ILLUSIONIST = 26 
local COERCER = 27 
local SUMMONER = 28 
local CONJUROR = 29 
local NECROMANCER = 30   
  
  
    
function Garbled(NPC,Spawn)
  	local choice = MakeRandomInt(1,6)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_1_garbled_fad67c0f.mp3", "Grrrolven brakth kerrtt", "", 2434003472, 3015799164, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_2_garbled_fe1eedd8.mp3", "Rrrrevvvvnarrr    jahht      ttekkkman", "", 3971608956, 1800082798, Spawn, 18)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_2_garbled_2f8caa7b.mp3", "Krovel grarggt ereverrrn", "", 2220517168, 2504002107, Spawn, 18)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_1_garbled_3eefc118.mp3", "Vologrrren  aggart   renevenn", "", 1823772746, 1098907850, Spawn, 18)
        elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_2_garbled_fad67c0f.mp3", "Grrrolven brakth kerrtt", "", 3925341333, 2874875469, Spawn, 18)
        elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_2_garbled_3eefc118.mp3", "Vologrrren  aggart   renevenn", "", 2725741122, 2405344632, Spawn, 18)
     end     
end

 function aggro(NPC,Spawn)   
    if IsPlayer(Spawn)==true then
    if not HasLanguage(Spawn,18 )and IsPlayer(Spawn)==true then
    Garbled(NPC,Spawn)
    else
 	local choice = MakeRandomInt(1,11)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_aggro_75cd5d19.mp3", "Not allowed here!", "", 1292107958, 2335134714, Spawn, 18)
        elseif choice == 2 then
 		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_aggro_75cd5d19.mp3", "Not allowed here!", "", 1266801616, 137145352, Spawn, 18)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_aggro_75cd5d19.mp3", "Not allowed here!", "", 942309136, 3095091783, Spawn, 18)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_aggro_d81be55c.mp3", "Bite! Show sharp teeth!", "", 612586564, 102929785, Spawn, 18)
        elseif choice == 5 then
 		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_aggro_d81be55c.mp3", "Bite! Show sharp teeth!", "", 3848163428, 3270249405, Spawn, 18)
        elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_aggro_d81be55c.mp3", "Bite! Show sharp teeth!", "", 3276849474, 2846177216, Spawn, 18)
        elseif choice == 7 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_aggro_fda03a16.mp3", "Spin, weave, dodge, attack!!!", "", 1347636574, 484324781, Spawn, 18)
        elseif choice == 8 then
 		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_aggro_fda03a16.mp3", "Spin, weave, dodge, attack!!!", "", 1516290828, 3143203494, Spawn, 18)
        elseif choice == 9 then
        if  GetClass(Spawn)== WIZARD or GetClass(Spawn)== WARLOCK or GetClass(Spawn)== ILLUSIONIST or GetClass(Spawn)== COERCER or GetClass(Spawn)== NECROMANCER or GetClass(Spawn)== CONJUROR or GetClass(Spawn)== MAGE or GetClass(Spawn)== ENCHANTER or GetClass(Spawn)== SUMMONER or GetClass(Spawn)== SORCERER then
		PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_2_maomage_3dffee38.mp3", "Magic won't hurt a Darkpaw!", "", 369565780, 3222136029, Spawn, 18)
        else
        PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_1_aggro_9465eed8.mp3", "More Qeynos food!", "", 1309513774, 1418294324, Spawn, 18)
        end 
        elseif choice == 10 then
 		PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_1_aggro_9465eed8.mp3", "More Qeynos food!", "", 1309513774, 1418294324, Spawn, 18)
        elseif choice == 11 then
		PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_1_aggro_cc01aeb4.mp3", "Kill it!", "", 2653540378, 4239807689, Spawn, 18)
end
       AddTimer(NPC,15000,"FifteenCall")
    end
end   
end
-- Doesn't Work PlayFlavor(NPC, "voiceover/english/optional5/gnoll_base_2/ft/gnoll/gnoll_base_2_1_aggro_959e4683.mp3", "Intruder!", "", 1672215946, 3521592402, Spawn, 18)


function death(NPC,Spawn)
    if math.random(0,100)<=75 then
    if IsPlayer(Spawn)==true then

    if not HasLanguage(Spawn,18 ) then
    Garbled(NPC,Spawn)
    else
        local choice = MakeRandomInt(1,9)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_death_9c1f07cb.mp3", "Another member of the pack down!", "", 782807197, 154562007, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_death_138a3058.mp3", "That one never mate!", "", 3110437136, 1206351893, Spawn, 18)
         elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_death_138a3058.mp3", "That one will never mate!", "", 216068291, 510666258, Spawn, 18)
          elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_death_9c1f07cb.mp3", "Another member of the pack down!", "", 3426629421, 3660282518, Spawn, 18)
          elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_1_death_b58a7d7b.mp3", "Uh oh... That's not good.", "", 3441781699, 2054801549, Spawn, 18)
          elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_2_death_78177b92.mp3", "Go with Fippy, fallen one!", "", 2386865415, 109088147, Spawn, 18)
           elseif choice == 7 then
		PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_1_death_78177b92.mp3", "Go with Fippy, fallen one!", "", 2198032094, 2283287701, Spawn, 18)
           elseif choice == 8 then
		PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_3_death_b58a7d7b.mp3", "Uh oh... That's not good.", "", 1931388401, 3306108998, Spawn, 18)
           elseif choice ==9 then
		PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_2_death_b58a7d7b.mp3", "Uh oh... That's not good.", "", 2757417921, 559371782, Spawn, 18)
    end
       AddTimer(NPC,15000,"FifteenCall")
    end
end
end
end

-- DOES NOT WORK		PlayFlavor(NPC, "voiceover/english/optional5/gnoll_base_2/ft/gnoll/gnoll_base_2_1_death_7cbd3c71.mp3", "I'll rip your throat open!", "", 134141978, 4165685331, Spawn, 18)

function FifteenCall(NPC,Spawn)
    if IsPlayer(Spawn)==true then
if IsInCombat(NPC)==true then
 if IsAlive(NPC) then
 if IsInCombat(NPC)==true then
    if math.random(0,100)<=60 then
     if not HasLanguage(Spawn,18 )and IsPlayer(Spawn)==true then
    Garbled(NPC,Spawn)
    else       
      local choice = MakeRandomInt(1,4)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_everyfifteenseconds_m_dbbe969a.mp3", "Grrrrrrrrrr! Yip!", "", 3107536729, 1468959623, Player, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_everyfifteenseconds_7c69417c.mp3", "Nip at their heels when they flee!", "", 4292535613, 1359167400, Player, 18)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_1_maofighter_13ee9bba.mp3", "For the memory of Fippy!", "", 528706383, 2119573339, Spawn, 18)
        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/optional5/gnoll_base_2/ft/gnoll/gnoll_base_2_1_battle_m_5c7913bb.mp3", "Bah!  You smell horrible!", "", 687847219, 3365844906, Spawn, 18)              end
    end
    end
    if IsAlive(NPC)then
    AddTimer(NPC,15000,"FifteenCall")
    end
end  
end
end
end
end

function healthchanged(NPC, Spawn)  
    if IsPlayer(Spawn)==true then
    if HealthCallout == false then
    if GetHP(NPC) < GetMaxHP(NPC) * 0.55 then
     if GetHP(NPC) > GetMaxHP(NPC) * 0.45 then
        HealthCallout = true
        AddTimer(NPC,10000,"HealthReset")
    if not HasLanguage(Spawn,18 )and IsPlayer(Spawn)==true then
        Garbled(NPC,Spawn)
    else    
      local choice = MakeRandomInt(1,4)
	if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_halfhealth_d093de2d.mp3", "Yip yip yip!", "", 166674284, 1395857397, Spawn, 18)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_3_halfhealth_50cceadf.mp3", "Uhhhh... I think I go now!", "", 4127070268, 185913289, Spawn, 18)
	elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_1_halfhealth_aff2b15d.mp3", "Now I'm really angry!", "", 1156319723, 267275011, Spawn, 18)
 	elseif choice == 4 then
    if  GetClass(Spawn)== WIZARD or GetClass(Spawn)== WARLOCK or GetClass(Spawn)== ILLUSIONIST or GetClass(Spawn)== COERCER or GetClass(Spawn)== NECROMANCER or GetClass(Spawn)== CONJUROR or GetClass(Spawn)== MAGE or GetClass(Spawn)== ENCHANTER or GetClass(Spawn)== SUMMONER or GetClass(Spawn)== SORCERER then
    PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_maomage_8fb8565d.mp3", "Yip! Watch out for their magic!", "", 1674162517, 4259121980, Spawn, 18)       
    else
    PlayFlavor(NPC, "voiceover/english/optional5/gnoll_base_2/ft/gnoll/gnoll_base_2_1_battle_m_5c7913bb.mp3", "Bah!  You smell horrible!", "", 687847219, 3365844906, Spawn, 18)             
    end    
    end
    end
    end
end
end
end
end

function HealthReset (NPC)
    HealthCallout = false
end


function victory(NPC,Spawn)
     if IsPlayer(Spawn)==true then
       if  HasLanguage(Spawn,18 )and IsPlayer(Spawn)==true then
  local choice = MakeRandomInt(1,3)
	    if choice == 1 then
	    PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_victory_e4520926.mp3", "Packmate not happy with scrawny catch.", "", 1321865956, 173648139, Spawn, 18)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional5/gnoll_base_2/ft/gnoll/gnoll_base_2_1_victory_8e18fe38.mp3", "Your fight is hopeless!", "", 2306110016, 2442076674, Spawn, 18)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnoll_darkpaw/ft/gnoll/gnoll_darkpaw_1_victory_d9fbe894.mp3", "That was easy!  Next!", "", 1732578964, 1761133947, Spawn, 18)
    end
end
end
end