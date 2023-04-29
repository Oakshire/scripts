--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/BaseBarbarian1.lua
    Script Author  : Dorbin
    Script Date    : 2023.04.27 06:04:35
    Script Purpose : Base1 Barbarian Racial Combat VOs
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
    if GetClass(Spawn)>=31 and GetClass(Spawn)<=42 then 
  	local choice = MakeRandomInt(1,4) --SCOUT CHECK
    else
    local choice = MakeRandomInt(1,3)
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
  	    local choice = MakeRandomInt(1,4) --SCOUT CHECK
        else
        local choice = MakeRandomInt(1,3)
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
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_death_gm_3e24be0b.mp3", "Cover me while we regroup!", "", 144951462, 3922442401)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_steppes/ft/barbarian/barbarian_steppes_2_death_gm_60ab074d.mp3", "My clansmen will avenge me!", "", 891201418, 1562586894)
        end
    else
 	local choice = MakeRandomInt(1,2)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_death_gf_9f33cf68.mp3", "Don't break! Hold the line!", "", 4168139414, 1969505231)
        else
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_2_death_gf_747d38d7.mp3", "Don't fear death! There is no surrender!", "", 1668075339, 3492211420)
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
	local choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_halfhealth_gm_267aa673.mp3", "Send for reinforcements! Their warriors are skilled.", "", 3033804277, 2302522141)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_halfhealth_gm_a04b8264.mp3", "Perhaps you're stronger than I thought!", "", 1156508542, 413023818)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_2_halfhealth_gm_267aa673.mp3", "Send for reinforcements! Their warriors are skilled.", "", 4193910374, 3533989230)        end
    else
	local choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_3_halfhealth_gf_267aa673.mp3", "Send for reinforcements! Their warriors are skilled.", "", 2527774659, 2542349358)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_2_halfhealth_gf_a04b8264.mp3", "Perhaps you're stronger than I thought!", "", 745602612, 2574365591)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_3_halfhealth_gf_267aa673.mp3", "Send for reinforcements!  Their warriors are skilled.", "", 2527774659, 2542349358, Spawn, 0)       end
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
	local choice = MakeRandomInt(1,3)
	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gm_155a84f0.mp3", "You fought well but not well enough!", "", 450019542, 4158631545)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gm_e707fef0.mp3", "Flee cowards, before I slaughter you all!", "", 3583801206, 1799910552)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gm_f87005b5.mp3", "Now you will have peace.", "", 3932457554, 2553847722)
        end
    else
	local choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gf_e707fef0.mp3", "Flee cowards, before I slaughter you all!", "", 1852613611, 2630125108)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gf_155a84f0.mp3", "You fought well but not well enough!", "", 1144735491, 2154607760)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_victory_gf_f87005b5.mp3", "Now you will have peace.", "", 2974774059, 665726799)
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