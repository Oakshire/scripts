--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/BaseSkeleton2.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.23 02:07:57
    Script Purpose : Base 2 Skeleton Voiceovers
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
 	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_c6c2672d.mp3", "Brains! It's what's for dinner.", "", 2091371377, 2422178491)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_18d1544d.mp3", "As I rise from the grave,  you will now take my place!", "", 485726074, 3646499350)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_daf16808.mp3", "To the grave with you!", "", 958122326, 1810359159)
        end
       AddTimer(NPC,math.random(15000,30000),"FifteenCall")
    end
   



function death(NPC,Spawn)
  if     GetTempVariable(NPC, "CalloutTimer")== "false" then
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_bb6b2b8e.mp3", "You cannot eliminate us!", "", 897103301, 541292352)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_edc04fb8.mp3", "That pile of bones was my friend!", "", 2317728806, 1758283676)
    end
    end
end



function FifteenCall(NPC,Player)
if IsInCombat(NPC)==true and IsAlive(NPC) == true and math.random(0,100)<=25 then
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
    AddTimer(NPC,math.random(15000,30000),"FifteenCall")
    end
end  
end



function healthchanged(NPC, Spawn)  
 if GetTempVariable(NPC, "CalloutTimer") == "false" then
    if GetTempVariable(NPC, "HealthCallout") == "false" then
    if GetHP(NPC) < GetMaxHP(NPC) * 0.55 then
    if GetHP(NPC) > GetMaxHP(NPC) * 0.45 then
    SetTempVariable(NPC, "HealthCallout", "true")
    SetTempVariable(NPC, "CalloutTimer", "true")
        AddTimer(NPC,10000,"ResetTimer")
        AddTimer(NPC,12500,"HealthReset")
    local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_halfhealth_f1d542e0.mp3", "Dying didn't feel good the first time.", "", 766636803, 1915881366)
	    elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_halfhealth_29344c6f.mp3", "I didn't need those bones anyway.", "", 1704957193, 2042978689)
    end    
    end
    end
    end
end
end


function victory(NPC,Spawn)
  local choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_victory_39c9d69e.mp3", "We're all just bones in the end.", "", 3276297174, 633510318)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_victory_cbcd383a.mp3", "Their bones will join mine!", "", 680786598, 666536798)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_victory_d7e375be.mp3", "Never too early to slumber in the grave.", "", 353194320, 2589250240)
end
end

function ResetTimer(NPC) -- 7 SECOND PAUSE BETWEEN VOs
    SetTempVariable(NPC, "CalloutTimer", "false")
end

function HealthReset (NPC)  --SO HALF HEALTH DOESN'T SPAM
    SetTempVariable(NPC, "HealthCallout", "false")
end