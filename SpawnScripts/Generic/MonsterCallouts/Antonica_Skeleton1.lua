--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/Antonica_Skeleton1.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.23 08:07:05
    Script Purpose : 
                   : 
--]]
local HealthCallout = false --REDUCES Half-Health Spam
local CalloutTimer = false --REDUCES Callout Spam


local FIGHTER = 1
local WARRIOR =2
local GUARDIAN= 3 
local BERSERKER = 4 
local BRAWLER = 5 
local MONK = 6 
local BRUISER= 7 
local CRUSADER = 8 
local SHADOWKNIGHT = 9 
local PALADIN = 10 


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
  
  

function aggro(NPC,Spawn)
--[[ if CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,7000,"ResetTimer")]]--
 	local choice = MakeRandomInt(1,9)
 	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_c77d7bff.mp3", "Your eyes are so pretty.", "", 1412152942, 873988632)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_2168c5.mp3", "Seek death and it finds you.", "", 2988489621, 1045543573)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_8bc7a2cc.mp3", "Your blood calls to me.", "", 1242322025, 1154999668) 
        elseif choice == 4 then
        if  GetClass(Spawn)>=1 and GetClass(Spawn)<=10 then
		PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_maofighter_ca2c63b.mp3", "Try your weapons on me fighter.", "", 3164950968, 4289608686)
        else
		PlayFlavor(NPC, "voiceover/english/skeleton_antonica/ft/skeleton/skeleton_antonica_1_aggro_f99f2382.mp3", "The living!", "", 3813843601, 915898224)
        end
        elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/skeleton_antonica/ft/skeleton/skeleton_antonica_1_aggro_f99f2382.mp3", "The living!", "", 3813843601, 915898224)
        elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/skeleton_antonica/ft/skeleton/skeleton_antonica_1_aggro_2ae99008.mp3", "Warm blood!", "", 2856072717, 3172883175)
        elseif choice == 7 then
		PlayFlavor(NPC, "voiceover/english/skeleton_antonica/ft/skeleton/skeleton_antonica_1_aggro_23962ef.mp3", "Kill the living.", "", 2553829981, 3192808961)
        elseif choice == 8 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_daf16808.mp3", "To the grave with you!", "", 958122326, 1810359159)
        elseif choice == 9 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_18d1544d.mp3", "As I rise from the grave,  you will now take my place!", "", 485726074, 3646499350)

    end
       AddTimer(NPC,15000,"FifteenCall")
end   
--end


function death(NPC,Spawn)
--[[ if CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,7000,"ResetTimer")]]--
        local choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_antonica/ft/skeleton/skeleton_antonica_2_death_d6173b75.mp3", "Sleep.", "", 1226539910, 3748325130)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/skeleton_antonica/ft/skeleton/skeleton_antonica_1_death_d6173b75.mp3", "Sleep.", "", 1041558061, 2894745512)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_edc04fb8.mp3", "That pile of bones was my friend!", "", 2317728806, 1758283676)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_antonica/ft/skeleton/skeleton_antonica_2_death_f4484123.mp3", "The rest has come.", "", 1639743123, 2395220586)
        elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/skeleton_antonica/ft/skeleton/skeleton_antonica_1_death_f4484123.mp3", "The rest has come.", "", 2605935830, 3475351545)
    end
    end
--end



function FifteenCall(NPC,Player)
if IsInCombat(NPC)==true and IsAlive(NPC) == true and math.random(0,100)<=25 then
--[[ if CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,7000,"ResetTimer")]]--
      local choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_everyfifteenseconds_8c0aac8c.mp3", "Nightmares are not only for slumber.", "", 4250803944, 3206368665)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_everyfifteenseconds_m_62f06fca.mp3", "You cannot cut what does not bleed.", "", 2912039571, 2278337941)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_everyfifteenseconds_e661e726.mp3", "I'll choke the breath from your lungs.", "", 2746342738, 2521715261)
    end
    end
    if IsAlive(NPC)then
    AddTimer(NPC,15000,"FifteenCall")
    end
end  
--end



function healthchanged(NPC, Spawn)  
 --[[if CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,7000,"ResetTimer")]]--
    if HealthCallout == false then
    if GetHP(NPC) < GetMaxHP(NPC) * 0.55 then
     if GetHP(NPC) > GetMaxHP(NPC) * 0.45 then
        HealthCallout = true
        AddTimer(NPC,12500,"HealthReset")
    local choice = MakeRandomInt(1,2)
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_halfhealth_d9ece37f.mp3", "You've shaken the dust from my bones.", "", 2011286772, 326848383)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_halfhealth_a4c947e4.mp3", "I'm shattered and broken.", "", 4021018144, 1305053073)
    end    
    end
    end
    end
end
--end


function victory(NPC,Spawn)
 --[[if CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,7000,"ResetTimer")]]--
  local choice = MakeRandomInt(1,4)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_victory_d2a649e7.mp3", "The life ebbs from them so quickly.", "", 2674394976, 3151731037)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_victory_fda8e7a9.mp3", "So stops the awful beating of their heart.", "", 1120117600, 3872148135)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_victory_ccde17c2.mp3", "Another falls to join our ranks.", "", 3285235030, 4198320186)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_antonica/ft/skeleton/skeleton_antonica_2_victory_aaa1685c.mp3", "Rise from the grave.", "", 3932775725, 794749133)
end
end
--end


function ResetTimer(NPC) -- 7 SECOND PAUSE BETWEEN VOs
    CalloutTimer = false
end

function HealthReset (NPC)  --SO HALF HEALTH DOESN'T SPAM
    HealthCallout = false
end
    