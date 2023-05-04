--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/HighwaymanAntonica.lua
    Script Author  : Dorbin
    Script Date    : 2023.04.29 12:04:03
    Script Purpose : Antonica Highwayman VOs that does Spawn Race & Gender Check for correct use -- Barbarian, Halfelf, Human
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
    Race= GetRace(NPC)   
    Model = GetModelType(NPC)
if Model >= 1462 and Model <= 1471  then
Barb_aggro(NPC,Spawn)
elseif Model ==78 or Model == 79 then
HfE_aggro(NPC,Spawn)
elseif Model ==132 or Model == 134 then
Hum_aggro(NPC,Spawn)
else
end
end
end 
 
--[[if Race == 0 then
Barb_aggro(NPC,Spawn)
elseif Race ==6 then
HfE_aggro(NPC,Spawn)
elseif Race==9 then
Hum_aggro(NPC,Spawn)
else
end
end
end   ]]--  

function Barb_aggro(NPC,Spawn)
    if GetGender(NPC)==1 then       --GENDER CHECK.  1==Male
    if GetClass(Spawn)>=31 and GetClass(Spawn)<=42 then 
  	 choice = MakeRandomInt(1,4) --SCOUT CHECK
    else
     choice = MakeRandomInt(1,3)
    end
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_aggro_gm_394a7fe3.mp3", "Not sneaky enough to get past me.", "", 3715495401, 2861752836)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_aggro_gm_d2336620.mp3", "Your overconfidence will be your undoing.", "", 1735697087, 1551611219)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_aggro_gm_ea4ba638.mp3", "Sentries, alarm!", "", 83822322, 1846685810)
        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_maoscout_gm_abf544b6.mp3", "Time to run, you sneaky coward!", "", 401121050, 1757713301)
        end  
    else
        if GetClass(Spawn)>=31 and GetClass(Spawn)<=42 then 
  	     choice = MakeRandomInt(1,4) --SCOUT CHECK
        else
         choice = MakeRandomInt(1,3)
        end
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_aggro_gf_d2336620.mp3", "You overconfidence will be your undoing.", "", 2263836674, 942538899)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_aggro_gf_ea4ba638.mp3", "Sentries, alarm!", "", 3264181187, 3210126852)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_aggro_gf_394a7fe3.mp3", "Not sneaky enough to get past me.", "", 3417148270, 2109180100)
        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_maoscout_gf_abf544b6.mp3", "Time to run, you sneaky coward!", "", 195739451, 1913168121)
        end
end    
end

function HfE_aggro(NPC,Spawn)
    AddTimer(NPC,7000,"ResetTimer")
    if GetGender(NPC)==1 then       --GENDER CHECK.  1==Male
    if GetClass(Spawn)>=21 and GetClass(Spawn)<=30 then 
  	 choice = MakeRandomInt(1,3) --MAGE CHECK
    else
     choice = MakeRandomInt(1,2)
    end
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_aggro_gm_13a3055.mp3", "Summon help, intruders have arrived!", "", 262436067, 4127133618)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_aggro_gm_12fbaefb.mp3", "Destroy the invader!", "", 489857902, 941763715)
        elseif choice == 3 then
PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_maomage_gm_96692f88.mp3", "Distract the magician or we'll all die!", "", 3332270247, 2351356263)
end  
    else
        choice = MakeRandomInt(1,3)
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
    AddTimer(NPC,7000,"ResetTimer")
    if GetGender(NPC)==1 then       --GENDER CHECK.  1==Male
    if GetClass(Spawn)>=31 and GetClass(Spawn)<=42 then 
  	 choice = MakeRandomInt(1,4) --SCOUT CHECK
    else
     choice = MakeRandomInt(1,3)
    end
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a203c9ec.mp3", "Prepare to face your doom, meddler.", "", 1496819882, 365167432)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a30c4f9d.mp3", "To arms!", "", 1238020980, 748146443)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_583690dc.mp3", "Summon help! We have invaders!", "", 3340212225, 279643307)
        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_maoscout_gm_d55d2935.mp3", "Use caution, they may have scouts!", "", 2353461553, 1453902220)
        end  
    else
 	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_aggro_gf_583690dc.mp3", "Summon help!  We have invaders!", "", 1598905349, 2204481929)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_aggro_gf_a203c9ec.mp3", "Prepare to face your doom, meddler.", "", 3593389433, 3838830228)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_aggro_gf_a30c4f9d.mp3", "To arms!", "", 2291750057, 1030180613)
        end
end    
end
 
 
   
-- DEATH CHECK --

function death(NPC,Spawn) --RACE CHECK
    Model = GetModelType(NPC)
if  GetTempVariable(NPC, "CalloutTimer")== "false"then
if Model >= 1462 and Model <= 1471  then
Barb_death(NPC,Spawn)
elseif Model ==78 or Model == 79 then
HfE_death(NPC,Spawn)
elseif Model ==132 or Model == 134 then
Hum_death(NPC,Spawn)
else
end
end
end



--[[ Race= GetRace(NPC)   
 if Race == 0 then
Barb_death(NPC,Spawn)
elseif Race ==6 then
HfE_death(NPC,Spawn)
elseif Race==9 then
Hum_death(NPC,Spawn)
else
end
end
end]]--

function Barb_death(NPC,Spawn)
    if GetGender(NPC)==1 then
 	 choice = MakeRandomInt(1,2)
        if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_death_gm_3e24be0b.mp3", "Cover me while we regroup!", "", 144951462, 3922442401)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_steppes/ft/barbarian/barbarian_steppes_2_death_gm_60ab074d.mp3", "My clansmen will avenge me!", "", 891201418, 1562586894)
        end
    else
 	 choice = MakeRandomInt(1,2)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_death_gf_9f33cf68.mp3", "Don't break! Hold the line!", "", 4168139414, 1969505231)
        else
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_2_death_gf_747d38d7.mp3", "Don't fear death! There is no surrender!", "", 1668075339, 3492211420)
    end
    end
end


function HfE_death(NPC,Spawn)
    if GetGender(NPC)==1 then
 	 choice = MakeRandomInt(1,2)
        if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gm_1a659852.mp3", "We must withdraw before we all die!", "", 3147364973, 1341536758, Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gm_610c650e.mp3", "You must flee!  I'll try to hold them.", "", 3580386891, 3023137994, Spawn, 0)
        end
    else
 	 choice = MakeRandomInt(1,2)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gf_610c650e.mp3", "You must flee!  I'll try to hold them.", "", 1612338229, 10301262, Spawn, 0)
        else
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gf_1a659852.mp3", "We must withdraw before we all die!", "", 2249500792, 2154633904, Spawn, 0)
    end
    end
end


function Hum_death(NPC,Spawn)
    if GetGender(NPC)==1 then
 	 choice = MakeRandomInt(1,2)
    
        if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_death_gm_3e24be0b.mp3", "Cover me while we regroup!", "", 144951462, 3922442401)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_death_gm_7612214f.mp3", "All hands retreat!", "", 3033325782, 1103449586)
        end
    else
 	 choice = MakeRandomInt(1,2)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_death_gf_3e24be0b.mp3", "Cover me while we regroup!", "", 3876965132, 3906042379)
        else
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_death_gf_7612214f.mp3", "All hands retreat!", "", 3620177897, 757784861)
       end
    end
    end


-- HealthChange CHECK --

function healthchanged(NPC,Spawn) --RACE CHECK
    Model = GetModelType(NPC)
if GetHP(NPC) <= GetMaxHP(NPC) * 0.55 and GetHP(NPC) >= GetMaxHP(NPC) * 0.45 then
    if IsAlive(NPC) and IsInCombat(NPC)==true  and IsPlayer(Spawn)and  GetTempVariable(NPC, "CalloutTimer")== "false" and GetTempVariable(NPC, "HealthCallout")== "false" then
        SetTempVariable(NPC, "HealthCallout", "true")
        AddTimer(NPC,9000,"ResetTimer")
        AddTimer(NPC,9000,"HealthReset")
            if Model >= 1462 and Model <= 1471  then
            Barb_healthchanged(NPC,Spawn)
            elseif Model ==78 or Model == 79 then
            HfE_healthchanged(NPC,Spawn)
            elseif Model ==132 or Model == 134 then
            Hum_healthchanged(NPC,Spawn)
            else
            end
    end
end

--[[        Race= GetRace(NPC)   
            if Race == 0 then
            Barb_healthchanged(NPC,Spawn)
            elseif Race ==6 then
            HfE_healthchanged(NPC,Spawn)
            elseif Race==9 then
            Hum_healthchanged(NPC,Spawn)
            else
            end
    end
end]]--
end

function Barb_healthchanged(NPC, Spawn)  
   if GetGender(NPC)==1 then
	 choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_halfhealth_gm_267aa673.mp3", "Send for reinforcements! Their warriors are skilled.", "", 3033804277, 2302522141)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_halfhealth_gm_a04b8264.mp3", "Perhaps you're stronger than I thought!", "", 1156508542, 413023818)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_2_halfhealth_gm_267aa673.mp3", "Send for reinforcements! Their warriors are skilled.", "", 4193910374, 3533989230)        end
    else
	 choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_3_halfhealth_gf_267aa673.mp3", "Send for reinforcements! Their warriors are skilled.", "", 2527774659, 2542349358)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_2_halfhealth_gf_a04b8264.mp3", "Perhaps you're stronger than I thought!", "", 745602612, 2574365591)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_3_halfhealth_gf_267aa673.mp3", "Send for reinforcements!  Their warriors are skilled.", "", 2527774659, 2542349358, Spawn, 0)       end
    end
end


function HfE_healthchanged(NPC, Spawn)  
    if GetGender(NPC)==1 then
	 choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_halfhealth_gm_e0686420.mp3", "Well, it seems you have some martial arts skills.", "", 1009191098, 3016339818, Spawn)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_halfhealth_gm_e48659f9.mp3", "Now, that really hurt!", "", 241651222, 476491397, Spawn)
        end
        else
	 choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_halfhealth_gf_e0686420.mp3", "Well, it seems you have some martial arts skills.", "", 743699854, 1906875496, Spawn)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_halfhealth_gf_e48659f9.mp3", "Now, that really hurt!", "", 413378164, 719939114, Spawn)
        end
    end
    
end


function Hum_healthchanged(NPC, Spawn)  
   if GetGender(NPC)==1 then
	 choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_halfhealth_gm_1babf022.mp3", "Is that all you have?", "", 170267964, 1158805306)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_halfhealth_gm_8529e507.mp3", "I can't hold them forever!", "", 644448824, 755050547)
        end
    else
	 choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_halfhealth_gf_8529e507.mp3", "I can't hold them forever!", "", 3371581229, 792393228)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_halfhealth_gf_1babf022.mp3", "Is that all you have?", "", 2979351329, 4050238683)
        end
    end
end



-- Victory CHECK --

function victory(NPC,Spawn) --RACE CHECK
    Model = GetModelType(NPC)
if Model >= 1462 and Model <= 1471  then
Barb_victory(NPC,Spawn)
elseif Model ==78 or Model == 79 then
HfE_victory(NPC,Spawn)
elseif Model ==132 or Model == 134 then
Hum_victory(NPC,Spawn)
else
end

--[[ Race= GetRace(NPC)   
 if Race == 0 then
Barb_victory(NPC,Spawn)
elseif Race ==6 then
HfE_victory(NPC,Spawn)
elseif Race==9 then
Hum_victory(NPC,Spawn)
else
end]]--
end


function Barb_victory(NPC,Spawn)
    if GetGender(NPC)==1 then
	 choice = MakeRandomInt(1,3)
	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gm_155a84f0.mp3", "You fought well but not well enough!", "", 450019542, 4158631545)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gm_e707fef0.mp3", "Flee cowards, before I slaughter you all!", "", 3583801206, 1799910552)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gm_f87005b5.mp3", "Now you will have peace.", "", 3932457554, 2553847722)
        end
    else
	 choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gf_e707fef0.mp3", "Flee cowards, before I slaughter you all!", "", 1852613611, 2630125108)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gf_155a84f0.mp3", "You fought well but not well enough!", "", 1144735491, 2154607760)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gf_f87005b5.mp3", "Now you will have peace.", "", 2974774059, 665726799)
        end
    end
end

function HfE_victory(NPC,Spawn)
    if GetGender(NPC)==1 then
	 choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_victory_gm_f5088778.mp3", "Get up! Death isn't good enough for you!", "", 3381713633, 2145918189, Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_victory_gm_f4fc7cf8.mp3", "Did you really think you had a chance?", "", 607143583, 3133144305, Spawn)
        end
    else
	 choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_victory_gf_6f459088.mp3", "Flee now or meet this one's fate.", "", 290765367, 473549337, Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_victory_gf_ec0cd85a.mp3", "I hope they're all this easy.", "", 1073758360, 3342649012, Spawn)
        end
    end
end

function Hum_victory(NPC,Spawn)
    if GetGender(NPC)==1 then
	 choice = MakeRandomInt(1,3)
	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_153f12ff.mp3", "One down!", "", 3009518664, 4140389760)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_4553e1e0.mp3", "Flee now or meet this one's fate.", "", 3032162747, 1359206304)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_ec0cd85a.mp3", "I hope they're all this easy.", "", 2687289628, 2303639320)
        end
    else
	 choice = MakeRandomInt(1,2)
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