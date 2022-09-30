--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/BaseSkeleton1.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.23 12:07:01
    Script Purpose : Base 1 Skeleton Voiceovers
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
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,10000,"ResetTimer")
 	local choice = MakeRandomInt(1,4)
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
        PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_2168c5.mp3", "Seek death and it finds you.", "", 2988489621, 1045543573)
        end
    end
       AddTimer(NPC,math.random(15000,30000),"FifteenCall",1,Spawn)
end   



function death(NPC,Spawn)
  if     GetTempVariable(NPC, "CalloutTimer")== "false" and IsPlayer(Spawn) then
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_ff39f327.mp3", "Final death comes at last.", "", 3768284332, 62777040)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_fbcb503b.mp3", "Rest in peace.", "", 3591309093, 1423656405)
    end
    end
end



function FifteenCall(NPC,Spawn)
if IsInCombat(NPC)==true and IsAlive(NPC) == true and math.random(0,100)<=25 and IsPlayer(Spawn) then
if GetTempVariable(NPC, "CalloutTimer") == "false" then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,10000,"ResetTimer")
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
    AddTimer(NPC,math.random(15000,30000),"FifteenCall",1,Spawn)
    end
end  
end



function healthchanged(NPC, Spawn)  
 if GetTempVariable(NPC, "CalloutTimer") == "false" and IsPlayer(Spawn) then
    if GetTempVariable(NPC, "HealthCallout") == "false" then
    if GetHP(NPC) < GetMaxHP(NPC) * 0.55 then
    if GetHP(NPC) > GetMaxHP(NPC) * 0.45 then
    SetTempVariable(NPC, "HealthCallout", "true")
    SetTempVariable(NPC, "CalloutTimer", "true")
        AddTimer(NPC,10000,"ResetTimer")
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
end


function victory(NPC,Spawn)
  local choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_victory_d2a649e7.mp3", "The life ebbs from them so quickly.", "", 2674394976, 3151731037)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_victory_fda8e7a9.mp3", "So stops the awful beating of their heart.", "", 1120117600, 3872148135)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_victory_ccde17c2.mp3", "Another falls to join our ranks.", "", 3285235030, 4198320186)
end
end



function ResetTimer(NPC) -- 7 SECOND PAUSE BETWEEN VOs
    SetTempVariable(NPC, "CalloutTimer", "false")
end

function HealthReset (NPC)  --SO HALF HEALTH DOESN'T SPAM
    SetTempVariable(NPC, "HealthCallout", "false")
end