--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/Dark_Coven.lua
    Script Author  : Dorbin
    Script Date    : 2023.04.26 12:04:11
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
    CalloutTimer = true
    AddTimer(NPC,7000,"ResetTimer")
    if GetGender(NPC)==1 then       --GENDER CHECK.  1==Male
 	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_dark_coven/ft/human/human_dark_coven_1_aggro_gm_949dc856.mp3", "Our plans do not include you!", "", 405839630, 785819215)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_dark_coven/ft/human/human_dark_coven_1_aggro_gm_a60cf2ef.mp3", "We will not allow your meddlesome ways to continue.", "", 450486378, 3835111883)
         elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a203c9ec.mp3", "Prepare to face your doom, meddler.", "", 1496819882, 365167432)
       end  
    else
 	local choice = MakeRandomInt(1,2)
 	    if choice == 1 then
 	    PlayFlavor(NPC, "voiceover/english/human_dark_coven/ft/human/human_dark_coven_1_aggro_gf_949dc856.mp3", "Our plans do not include you!", "", 3085098101, 2051124081)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/human_dark_coven/ft/human/human_dark_coven_1_aggro_gf_a60cf2ef.mp3", "We will not allow your meddlesome ways to continue.", "", 4234607165, 2760526135)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/human_dark_coven/ft/human/human_dark_coven_1_aggro_gf_45499fb0.mp3", "What? Who dares to disrupt the Dark Coven?", "", 1379384971, 1110995776)    
    end
       AddTimer(NPC,15000,"FifteenCall")
end    
end
   



function death(NPC,Spawn)
 --[[if CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,7000,"ResetTimer")]]--
    if GetGender(NPC)==1 then
 	local choice = MakeRandomInt(1,2)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_dark_coven/ft/human/human_dark_coven_1_death_gm_3cf819de.mp3", "I hope that doesn't happen to me!", "", 2189708975, 2914511928)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_dark_coven/ft/human/human_dark_coven_1_death_gm_f91e0887.mp3", "Thule's blood! You'll pay for that!", "", 3536447254, 3337139055)
        end  
    else
 	local choice = MakeRandomInt(1,2)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_dark_coven/ft/human/human_dark_coven_1_death_gf_f91e0887.mp3", "Thule's blood! You'll pay for that!", "", 2051236772, 852294244)
        else
 		PlayFlavor(NPC, "voiceover/english/human_dark_coven/ft/human/human_dark_coven_1_death_gf_3cf819de.mp3", "I hope that doesn't happen to me!", "", 934100362, 1666973583)
       end
    end
    end
--end


function healthchanged(NPC, Spawn)  
--[[  if CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,7000,"ResetTimer")]]--
    if HealthCallout == false then
    if GetHP(NPC) <= GetMaxHP(NPC) * 0.55 and GetHP(NPC) >= GetMaxHP(NPC) * 0.45 then
    if GetGender(NPC)==1 then
    --MISSING
    else
	local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_dark_coven/ft/human/human_dark_coven_1_halfhealth_gf_9104e3c1.mp3", "Oh drat. I hate the reincarnation process!", "", 4015796652, 3375474478)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_dark_coven/ft/human/human_dark_coven_1_halfhealth_gf_c2957367.mp3", "Noooo! I'm melting!", "heart", 4150698035, 4276254786)
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
    if GetGender(NPC)==1 then
	local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_halfhealth_gm_1babf022.mp3", "Is that all you have?", "", 170267964, 1158805306)
		elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_foresters/ft/human/human_foresters_1_aggro_gm_da8c1c5d.mp3", "You angered the spirits of the woods for the last time.", "", 3652855832, 3722520538)        end
    else
	local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/barbarian_dreadnaught/ft/barbarian/barbarian_dreadnaught_1_victory_gf_e6d7960e.mp3", "You didn't stand a chance!", "", 3255267278, 1071089122)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gf_f87005b5.mp3", "Now you will have peace!", "", 2974774059, 665726799)
        end
    end
end
--end

function ResetTimer(NPC) -- 7 SECOND PAUSE BETWEEN VOs
    CalloutTimer = false
end

function HealthReset (NPC)  --SO HALF HEALTH DOESN'T SPAM
    HealthCallout = false
end