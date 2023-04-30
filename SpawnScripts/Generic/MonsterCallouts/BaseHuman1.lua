--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/BaseHuman1.lua
    Script Author  : Dorbin
    Script Date    : 2023.04.26 08:04:45
    Script Purpose : Base Racial Human VOs
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
 	 choice = MakeRandomInt(1,3)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_aggro_gf_583690dc.mp3", "Summon help!  We have invaders!", "", 1598905349, 2204481929)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_aggro_gf_a203c9ec.mp3", "Prepare to face your doom, meddler.", "", 3593389433, 3838830228)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_aggro_gf_a30c4f9d.mp3", "To arms!", "", 2291750057, 1030180613)
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
        PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_death_gm_7612214f.mp3", "All hands retreat!", "", 3033325782, 1103449586)
        end
    else
 	local choice = MakeRandomInt(1,2)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_death_gf_3e24be0b.mp3", "Cover me while we regroup!", "", 3876965132, 3906042379)
        else
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_death_gf_7612214f.mp3", "All hands retreat!", "", 3620177897, 757784861)
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
	local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_halfhealth_gm_1babf022.mp3", "Is that all you have?", "", 170267964, 1158805306)
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
--end

function ResetTimer(NPC) -- 7 SECOND PAUSE BETWEEN VOs
    CalloutTimer = false
end

function HealthReset (NPC)  --SO HALF HEALTH DOESN'T SPAM
    HealthCallout = false
end