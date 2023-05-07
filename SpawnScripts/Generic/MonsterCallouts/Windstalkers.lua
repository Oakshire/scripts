--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/Windstalkers.lua
    Script Author  : Dorbin
    Script Date    : 2023.04.30 12:04:56
    Script Purpose : Windstalker Village Combat VOs - Antonica Primarily
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
  
  
--AGGRO CHECK --

function aggro(NPC,Spawn) --RACE CHECK
    SetTempVariable(NPC, "CalloutTimer", "false")
    SetTempVariable(NPC, "HealthCallout", "false")
if  GetTempVariable(NPC, "CalloutTimer")== "false"then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,7000,"ResetTimer")
    local Race= GetRace(NPC)   
 if Race == 6 then
HfE_aggro(NPC,Spawn)
elseif Race==9 then
Hum_aggro(NPC,Spawn)
else
end
end
end     



function HfE_aggro(NPC,Spawn)
    if GetGender(NPC)==1 then       --GENDER CHECK.  1==Male
    if GetClass(Spawn)>=21 and GetClass(Spawn)<=30 then 
  	 Pick = MakeRandomInt(1,3) --MAGE CHECK
    else
     Pick = MakeRandomInt(1,2)
    end
 	    if Pick == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_aggro_gm_13a3055.mp3", "Summon help, intruders have arrived!", "", 262436067, 4127133618)
        elseif Pick == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_aggro_gm_12fbaefb.mp3", "Destroy the invader!", "", 489857902, 941763715)
        elseif Pick == 3 then
        PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_maomage_gm_96692f88.mp3", "Distract the magician or we'll all die!", "", 3332270247, 2351356263)
        end  
    else
        local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_aggro_gf_12fbaefb.mp3", "Destroy the invader!", "", 1313233821, 723410897)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_aggro_gf_a68f64b6.mp3", "Alarm! Alarm!", "", 1220383018, 2962002142)
        elseif choice == 3 then
 		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_aggro_gf_13a3055.mp3", "Summon help, intruders have arrived!", "", 3324527452, 2122161878)
       end
end    
end

function Hum_aggro(NPC,Spawn)
    if GetGender(NPC)==1 then       --GENDER CHECK.  1==Male
     local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional5/human_windstalkers/ft/human/human_windstalkers_1_aggro_gm_a6d0b787.mp3", "The bears told me to kill you!", "", 536396117, 2147228574)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional5/human_windstalkers/ft/human/human_windstalkers_1_aggro_gm_dccb12e.mp3", "Now it's time to die, little rabbit!", "", 3249519066, 4146206338)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional5/human_windstalkers/ft/human/human_windstalkers_1_aggro_gm_b11fb649.mp3", "The animals scream for vengeance!", "", 268719394, 2417421394)
        end  
    else
     AddTimer(NPC,math.random(15000,30000),"FifteenCall",1,Spawn)
	 local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_windstalkers/ft/human/human_windstalkers_1_aggro_gf_a6d0b787.mp3", "The bears told me to kill you!", "", 2136224796, 3415208051)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_windstalkers/ft/human/human_windstalkers_1_aggro_gf_b11fb649.mp3", "The animals scream for vengeance!", "", 1171613527, 934412679)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_windstalkers/ft/human/human_windstalkers_1_aggro_gf_dccb12e.mp3", "Now it's time to die, little rabbit!", "", 2799492103, 2525496836)
        end
end    
end
 
 
   
-- DEATH CHECK --

function death(NPC,Spawn) --RACE CHECK
if  GetTempVariable(NPC, "CalloutTimer")== "false"then
 Race= GetRace(NPC)   
 if Race == 6 then
HfE_death(NPC,Spawn)
elseif Race==9 then
Hum_death(NPC,Spawn)
else
end
end
end


function HfE_death(NPC,Spawn)
    if GetGender(NPC)==1 then
 	 local choice = MakeRandomInt(1,2)
        if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gm_1a659852.mp3", "We must withdraw before we all die!", "", 3147364973, 1341536758)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gm_610c650e.mp3", "You must flee!  I'll try to hold them.", "", 3580386891, 3023137994)
        end
    else
 	 local choice = MakeRandomInt(1,2)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gf_610c650e.mp3", "You must flee!  I'll try to hold them.", "", 1612338229, 10301262)
        else
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gf_1a659852.mp3", "We must withdraw before we all die!", "", 2249500792, 2154633904)
    end
    end
end


function Hum_death(NPC,Spawn)
    if GetGender(NPC)==1 then
 	 local choice = MakeRandomInt(1,2)
    
        if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional5/human_windstalkers/ft/human/human_windstalkers_1_death_gm_7fc8a992.mp3", "My companion will be reborn as an animal and hunt you down!", "", 4095950768, 2638720474)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional5/human_windstalkers/ft/human/human_windstalkers_1_death_gm_15f1c518.mp3", "The wolves will howl in remembrance of the fallen.", "", 438946486, 1503863875)
        end
    else
 	 local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_windstalkers/ft/human/human_windstalkers_1_death_gf_7fc8a992.mp3", "My companion will be reborn as an animal and hunt you down!", "", 3241674347, 112875582)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_windstalkers/ft/human/human_windstalkers_1_death_gf_15f1c518.mp3", "The wolves will howl in remembrance of the fallen.", "", 1738757569, 154731502)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_windstalkers/ft/human/human_windstalkers_1_aggro_gf_b11fb649.mp3", "The animals scream for vengeance!", "", 1171613527, 934412679)
       end
    end
    end

-- Battle Cry Call (Female Human Only)

function FifteenCall(NPC,Spawn)
 if IsAlive(NPC) and IsInCombat(NPC)==true  and IsPlayer(Spawn)and  GetTempVariable(NPC, "CalloutTimer")== "false" then
    if math.random(0,100)<=33 then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,10000,"ResetTimer")
      local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/optional3/human_windstalkers/ft/human/human_windstalkers_1_battle_gf_7ad3a09.mp3", "Can't you hear the animals screaming?", "", 959773922, 3663023157)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional3/human_windstalkers/ft/human/human_windstalkers_1_battle_gf_d1f33b41.mp3", "Pay for your crimes against nature's creatures.", "", 3824659479, 1994519243)
        end
    end
    end
    if IsAlive(NPC)then
    AddTimer(NPC,math.random(15000,30000),"FifteenCall",1,Spawn)
    end
end  



-- HealthChange CHECK --

function healthchanged(NPC,Spawn) --RACE CHECK
if GetHP(NPC) <= GetMaxHP(NPC) * 0.55 and GetHP(NPC) >= GetMaxHP(NPC) * 0.45 then
    if IsAlive(NPC) and IsInCombat(NPC)==true  and IsPlayer(Spawn)and  GetTempVariable(NPC, "CalloutTimer")== "false" and GetTempVariable(NPC, "HealthCallout")== "false" then
        SetTempVariable(NPC, "HealthCallout", "true")
        AddTimer(NPC,9000,"HealthReset")
        local Race= GetRace(NPC)   
            if Race == 6 then
            HfE_healthchanged(NPC,Spawn)
            elseif Race==9 then
            Hum_healthchanged(NPC,Spawn)
            else
            end
    end
end
end


function HfE_healthchanged(NPC, Spawn)  
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


function Hum_healthchanged(NPC, Spawn)  
   if GetGender(NPC)==1 then
	    local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional5/human_windstalkers/ft/human/human_windstalkers_1_death_gm_15f1c518.mp3", "The wolves will howl in remembrance of the fallen.", "", 438946486, 1503863875, Spawn, 0)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_halfhealth_gm_8529e507.mp3", "I can't hold them forever!", "", 644448824, 755050547)
        end
    else
	    local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_halfhealth_gf_8529e507.mp3", "I can't hold them forever!", "", 3371581229, 792393228)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_halfhealth_gf_1babf022.mp3", "Is that all you have?", "", 2979351329, 4050238683)
        end
    end
end



-- Victory CHECK --

function victory(NPC,Spawn) --RACE CHECK
 Race= GetRace(NPC)   
 if Race == 6 then
HfE_victory(NPC,Spawn)
elseif Race==9 then
Hum_victory(NPC,Spawn)
else
end
end

function HfE_victory(NPC,Spawn)
    if GetGender(NPC)==1 then
	 local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_victory_gm_f5088778.mp3", "Get up! Death isn't good enough for you!", "", 3381713633, 2145918189)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_victory_gm_f4fc7cf8.mp3", "Did you really think you had a chance?", "", 607143583, 3133144305)
        end
    else
	 local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_victory_gf_6f459088.mp3", "Flee now or meet this one's fate.", "", 290765367, 473549337)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_victory_gf_ec0cd85a.mp3", "I hope they're all this easy.", "", 1073758360, 3342649012)
        end
    end
end

function Hum_victory(NPC,Spawn)
    if GetGender(NPC)==1 then
	 local choice = MakeRandomInt(1,3)
	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_153f12ff.mp3", "One down!", "", 3009518664, 4140389760)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_4553e1e0.mp3", "Flee now or meet this one's fate.", "", 3032162747, 1359206304)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_ec0cd85a.mp3", "I hope they're all this easy.", "", 2687289628, 2303639320)
        end
    else
	 local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_victory_gf_6f459088.mp3", "Flee now or meet this one's fate.", "", 290765367, 473549337)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_victory_gf_ec0cd85a.mp3", "I hope they're all this easy.", "", 1073758360, 3342649012)
        end
    end
end

function ResetTimer(NPC) -- 7 SECOND PAUSE BETWEEN VOs
    SetTempVariable(NPC, "CalloutTimer", "false")
end

function HealthReset (NPC)  --SO HALF HEALTH DOESN'T SPAM
    SetTempVariable(NPC, "HealthCallout", "false")
    SetTempVariable(NPC, "CalloutTimer", "false")
end