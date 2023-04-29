--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/BaseHalfElf1.lua
    Script Author  : Dorbin
    Script Date    : 2023.04.28 05:04:35
    Script Purpose : Base 1 Racial Halfelf Combat VOs
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
    if GetClass(Spawn)>=21 and GetClass(Spawn)<=30 then 
  	local choice = MakeRandomInt(1,3) --MAGE CHECK
    else
    local choice = MakeRandomInt(1,2)
    end
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_aggro_gm_13a3055.mp3", "Summon help, intruders have arrived!", "", 262436067, 4127133618, Spawn)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_aggro_gm_12fbaefb.mp3", "Destroy the invader!", "", 489857902, 941763715, Spawn, 0)
        elseif choice == 3 then
PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_maomage_gm_96692f88.mp3", "Distract the magician or we'll all die!", "", 3332270247, 2351356263, Spawn)        end  
    else
--       if GetClass(Spawn)>=21 and GetClass(Spawn)<=32 then 
--  	    local choice = MakeRandomInt(1,3) --MAGE CHECK (MISSING VO)
--        else
        local choice = MakeRandomInt(1,2)
 --       end
 	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_aggro_gf_12fbaefb.mp3", "Destroy the invader!", "", 1313233821, 723410897, Spawn)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_aggro_gf_a68f64b6.mp3", "Alarm! Alarm!", "", 1220383018, 2962002142, Spawn)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_maoscout_gf_abf544b6.mp3", "Time to run, you sneaky coward!", "", 195739451, 1913168121)
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
		PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gm_1a659852.mp3", "We must withdraw before we all die!", "", 3147364973, 1341536758, Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gm_610c650e.mp3", "You must flee!  I'll try to hold them.", "", 3580386891, 3023137994, Spawn, 0)
        end
    else
 	local choice = MakeRandomInt(1,2)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gf_610c650e.mp3", "You must flee!  I'll try to hold them.", "", 1612338229, 10301262, Spawn, 0)
        else
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gf_1a659852.mp3", "We must withdraw before we all die!", "", 2249500792, 2154633904, Spawn, 0)
    end
    end
end



function healthchanged(NPC, Spawn)  
--[[  if CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,7000,"ResetTimer")]]--
    if HealthCallout == false then
    if GetHP(NPC) <= GetMaxHP(NPC) * 0.55 and GetHP(NPC) >= GetMaxHP(NPC) * 0.45 then
    if GetGender(NPC)==1 then
	local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_halfhealth_gm_e0686420.mp3", "Well, it seems you have some martial arts skills.", "", 1009191098, 3016339818, Spawn)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_halfhealth_gm_e48659f9.mp3", "Now, that really hurt!", "", 241651222, 476491397, Spawn)
        end
        else
	local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_halfhealth_gf_e0686420.mp3", "Well, it seems you have some martial arts skills.", "", 743699854, 1906875496, Spawn)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_halfhealth_gf_e48659f9.mp3", "Now, that really hurt!", "", 413378164, 719939114, Spawn)
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
        PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_victory_gm_f5088778.mp3", "Get up! Death isn't good enough for you!", "", 3381713633, 2145918189, Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_victory_gm_f4fc7cf8.mp3", "Did you really think you had a chance?", "", 607143583, 3133144305, Spawn)
        end
    else
	local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_victory_gf_6f459088.mp3", "Flee now or meet this one's fate.", "", 290765367, 473549337, Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_victory_gf_ec0cd85a.mp3", "I hope they're all this easy.", "", 1073758360, 3342649012, Spawn)
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