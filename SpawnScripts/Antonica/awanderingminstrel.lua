--[[
    Script Name    : SpawnScripts/Antonica/awanderingminstrel.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.27 07:08:08
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/Windstalkers.lua")

function spawn(NPC)
State(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 4)
	if choice == 1 then
	PlayFlavor(NPC, "", "Have you heard the Bonny Lass?", "", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "", "The townsfolk aren't as pleasant as they were during my last visit.", "", 0, 0, Spawn)
	elseif choice == 3 then
	PlayFlavor(NPC, "Buy me a drink, and I'll sing you a song.", "", 0, 0, Spawn)
	elseif choice == 4 then
	PlayFlavor(NPC, "I always stop in to have some of Lanice's delightful ale.", "", 0, 0, Spawn)
end
end

function State(NPC)
   SpawnSet(NPC,"visual_state,",15260)
end


function respawn(NPC)
	spawn(NPC)
end

--AGGRO CHECK --

function aggro(NPC,Spawn) --RACE CHECK
    SetTempVariable(NPC, "CalloutTimer", "false")
    SetTempVariable(NPC, "HealthCallout", "false")
   SpawnSet(NPC,"visual_state,",0)
if  GetTempVariable(NPC, "CalloutTimer")== "false"then
    SetTempVariable(NPC, "CalloutTimer", "true")
    AddTimer(NPC,7000,"ResetTimer")
    
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
end
 
 
   
-- DEATH CHECK --

function death(NPC,Spawn) --RACE CHECK
if  GetTempVariable(NPC, "CalloutTimer")== "false"then
  	 local choice = MakeRandomInt(1,2)
   if GetGender(NPC)==1 then
        if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gm_1a659852.mp3", "We must withdraw before we all die!", "", 3147364973, 1341536758)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gm_610c650e.mp3", "You must flee!  I'll try to hold them.", "", 3580386891, 3023137994)
        end
    else
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gf_610c650e.mp3", "You must flee!  I'll try to hold them.", "", 1612338229, 10301262)
        else
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gf_1a659852.mp3", "We must withdraw before we all die!", "", 2249500792, 2154633904)
        end
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
	    local choice = MakeRandomInt(1,2)

    if GetGender(NPC)==1 then
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_halfhealth_gm_e0686420.mp3", "Well, it seems you have some martial arts skills.", "", 1009191098, 3016339818, Spawn)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_halfhealth_gm_e48659f9.mp3", "Now, that really hurt!", "", 241651222, 476491397, Spawn)
        end
    else
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_halfhealth_gf_e0686420.mp3", "Well, it seems you have some martial arts skills.", "", 743699854, 1906875496, Spawn)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_halfhealth_gf_e48659f9.mp3", "Now, that really hurt!", "", 413378164, 719939114, Spawn)
        end
    end
    
end
end
end

-- Victory CHECK --

function victory(NPC,Spawn) --RACE CHECK
    SpawnSet(NPC,"visual_state,",15260)
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


function ResetTimer(NPC) -- 7 SECOND PAUSE BETWEEN VOs
    SetTempVariable(NPC, "CalloutTimer", "false")
end

function HealthReset (NPC)  --SO HALF HEALTH DOESN'T SPAM
    SetTempVariable(NPC, "HealthCallout", "false")
    SetTempVariable(NPC, "CalloutTimer", "false")
end