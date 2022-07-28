--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/BaseTroll1.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.24 01:07:52
    Script Purpose : Base Troll Callouts.  Does not contain garbled.  (Missing a few Female VOs.  e.g. Victory#2, Half Health, Death)
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
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gm_b7e0b3a.mp3", "Me going to eat your kidney first.", "", 3664886715, 2450110061)
        elseif choice == 2 then
 		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gm_d1a345c7.mp3", "I'm gonna give you a smile like ol' one tooth!", "", 2209033822, 2591536638)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gm_f06d6bb9.mp3", "Not nice to interrupt dinner.", "", 573837171, 4255493444)
        end  
    else
 	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
 	    PlayFlavor(NPC,"voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gf_b7e0b3a.mp3","Me's gonna eat your kidney first!","",750980753, 3740010516)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gf_d1a345c7.mp3", "I'm gonna give you a smile like ol' one tooth!", "", 1201784314, 2598207561)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_aggro_gf_f06d6bb9.mp3", "Not nice to interrupt dinner.", "", 3860408661, 3681593402)
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
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_death_gm_e8c02d1e.mp3", "Feel kinda sleepy. Whacha do to me?", "", 3298938103, 1410551282)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_death_gm_e1755f3f.mp3", "Come back you coward! I'm not dead yet.", "", 86111608, 3954832486)
        end  
    else
 	local choice = MakeRandomInt(1,2)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_death_gf_e8c02d1e.mp3", "Feel kinda sleepy. Whacha do to me?", "", 3447489483, 4136415601)
        else
 		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_death_gf_e1755f3f.mp3", "Come back you coward! I'm not dead yet.", "", 695536554, 1919499087, Spawn, 0)
       end
    end
    end
--end


function FifteenCall(NPC,Player)
if IsInCombat(NPC)==true and IsAlive(NPC) == true and math.random(0,100)<=25 then
--[[ if CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,7000,"ResetTimer")]]--
    if GetGender(NPC)==1 then
 	local choice = MakeRandomInt(1,3)
 	    if choice == 1 then
        PlayFlavor(NPC,"voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_battle_gm_ee1e1a8.mp3","Attack!","",3180104139, 2926558993)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_battle_gm_ee1e1a8.mp3", "Blood bath!", "", 3180104139, 2926558993)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_battle_gm_885bb802.mp3", "Your skin will make a nice rug.", "", 1438966168, 4203435659)
        end  
    else
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_battle_gf_ee1e1a8.mp3", "Blood bath!", "", 3988277815, 18269010)
    end
    if IsAlive(NPC)then
    AddTimer(NPC,15000,"FifteenCall")
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
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_halfhealth_gm_f462f6ff.mp3", "Is this supposed to hurt?", "", 4202180867, 1393988988)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_halfhealth_gm_aa145f4d.mp3", "Neat, that'll leave a pretty scar", "", 675684950, 4088135432)
        end
    else
	local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_halfhealth_gf_aa145f4d.mp3", "Neat, that'll leave a pretty scar", "", 70455099, 2953679351)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_halfhealth_gf_f462f6ff.mp3", "Is this supposed to hurt?", "", 216769747, 692696120)
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
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_victory_gm_ae6d66e3.mp3", "Teach you to mess with the best.", "", 927528340, 2751002174)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_halfhealth_gm_aa145f4d.mp3", "Neat, that'll leave a pretty scar", "", 675684950, 4088135432)
        end
    else
	local choice = MakeRandomInt(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_victory_gf_ae6d66e3.mp3", "Teach you to mess with the best.", "", 2175921460, 357738989)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/troll_base_1/ft/troll/troll_base_1_1_battle_gf_ee1e1a8.mp3", "Blood bath!", "", 3988277815, 18269010)
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