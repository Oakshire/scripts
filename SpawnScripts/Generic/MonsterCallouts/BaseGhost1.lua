--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/BaseGhost1.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.27 03:05:33
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

local Barbarian = 0
local DarkElf = 1
local Dwarf = 2
local Erudite = 3
local Froglok = 4
local Gnome = 5
local HalfElf = 6
local Halfling = 7
local HighElf = 8
local Human = 9
local Iksar = 10
local Kerra = 11
local Ogre = 12
local Ratonga = 13
local Troll = 14
local WoodElf = 15
    
function aggro(NPC,Spawn)
    SetTempVariable(NPC, "CalloutTimer", "false")
    SetTempVariable(NPC, "HealthCallout", "false")
if  GetTempVariable(NPC, "CalloutTimer")== "false"then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,7000,"ResetTimer")
    if GetGender(NPC)==1 then       --GENDER CHECK.  1==Male
       AddTimer(NPC,math.random(15000,30000),"FifteenCall",1,Spawn)
        choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_aggro_gm_3e2a680d.mp3", "You cannot run from death, mortal!", "", 3726501132, 2641272181)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_aggro_gm_11cb6bf8.mp3", "Mortal agony is nothing compared to the torment that awaits you!", "", 2544751499, 3488336081)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_aggro_gm_8a0dd99d.mp3", "I will show you the true pain of death!", "", 2563182730, 2699265972)
        end
    else
        choice = MakeRandomInt(1,3)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_aggro_gf_11cb6bf8.mp3", "Mortal agony is nothing compared to the torment that awaits you!", "", 1709305523, 785917379)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_aggro_gf_8a0dd99d.mp3", "I will show you the true pain of death!", "", 1781892618, 4026020917)
        elseif choice == 3 then
	   	PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_aggro_gf_3e2a680d.mp3", "You cannot run from death, mortal!", "", 351069702, 1435784652)
     end    
    end
    end   
end

function FifteenCall(NPC,Spawn)
 if IsAlive(NPC) and IsInCombat(NPC)==true  and IsPlayer(Spawn)and  GetTempVariable(NPC, "CalloutTimer")== "false" then
    if math.random(0,100)<=33 then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,10000,"ResetTimer")
    if GetGender(NPC) ==1 then
      local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_everyfifteenseconds_gm_57b99cd6.mp3", "Eternal sleep is at hand.", "", 1119398838, 1604535949)
        elseif choice == 2 then
        if GetClass(Spawn) >=1 and GetClass(Spawn)<=11 or GetClass(Spawn) >=21 and GetClass(Spawn)<=30 then
          if GetClass(Spawn) >=1 and GetClass(Spawn)<=11 then      
    	  PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_maofighter_gm_fccb4e4.mp3", "Your strength will not fend off death!","" ,3954285821, 1661926535)
          elseif GetClass(Spawn) >=21 and GetClass(Spawn)<=30 then
    	  PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_maomage_gm_8ab05a8f.mp3", "The dead do not fear your magic.", "", 2363203300, 1086897009)
          end
        end
    else
    end
    end
    end
    if IsAlive(NPC)then
    AddTimer(NPC,math.random(15000,30000),"FifteenCall",1,Spawn)
    end
end  
end


function death(NPC,Spawn)
if CalloutTimer== false then
    if GetGender(NPC)==1 then
    	local choice = MakeRandomInt(1,2)
        if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_death_gm_49b06ac1.mp3", "You cannot kill what is already dead!", "", 2840452858, 3381399753, Spawn, 0)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_death_gm_18bd9c56.mp3", "You will see us again in your nightmares!", "", 3496984483, 236189449, Spawn, 0)
        end
    else
    	local choice = MakeRandomInt(1,2)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_death_gf_49b06ac1.mp3", "You cannot kill what is already dead!", "", 3015653280, 2452981919, Spawn, 0)
        else
		PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_death_gf_18bd9c56.mp3", "You will see us again in your nightmares!", "", 925894256, 166843390, Spawn, 0)
        end
        end
    end
end



function healthchanged(NPC, Spawn)  
if GetHP(NPC) <= GetMaxHP(NPC) * 0.55 and GetHP(NPC) >= GetMaxHP(NPC) * 0.45 then
    if IsAlive(NPC) and IsInCombat(NPC)==true  and IsPlayer(Spawn)and  GetTempVariable(NPC, "CalloutTimer")== "false" and GetTempVariable(NPC, "HealthCallout")== "false" then
        SetTempVariable(NPC, "HealthCallout", "true")
        AddTimer(NPC,9000,"ResetTimer")
        AddTimer(NPC,9000,"HealthReset")
    if GetGender(NPC)==1 then
        PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_halfhealth_gf_4c18f3ce.mp3", "Your struggle is for naught!", "", 1689672062, 2512623281)
    else
        PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_halfhealth_gm_4c18f3ce.mp3", "Your struggle is for naught!", "", 1816370688, 1982413936)
     end
    end
end
end    


function victory(NPC,Spawn)
    if GetGender(NPC)==1 then
	local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_victory_gm_79236cb9.mp3", "It was too late. They have met our fate.", "", 869850080, 2857504352, Spawn)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_victory_gm_3f0a2355.mp3", "Death is only the beginning!", "", 468059547, 3073125588)
       end
    else
	local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_victory_gf_20212485.mp3", "", "", 700890837, 3828169591)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_victory_gf_3f0a2355.mp3", "Death is only the beginning!", "", 1504821242, 3900153298)
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