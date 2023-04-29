--[[
    Script Name    : SpawnScripts/Generic/MonsterCallouts/BaseDarkElf1.lua
    Script Author  : Dorbin
    Script Date    : 2023.04.28 06:04:50
    Script Purpose : Base Darkelf Racial Combat VOs
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
    if GetClass(Spawn)>=1 and GetClass(Spawn)<=10 or GetClass(Spawn)>=21 and GetClass(Spawn)<=30 then 
  	local choice = MakeRandomInt(1,7) --Mage/Fighter CHECK
    else
    local choice = MakeRandomInt(1,5)
    end
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_aggro_gm_10fd87eb.mp3", "There is no escape for you now!", "", 2989643101, 2260454555)
        elseif choice == 2 then
 		PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_aggro_gm_beacbb30.mp3", "I hope you put your affairs in order.", "", 799093996, 16617637)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_aggro_gm_fe18133.mp3", "Look what strolled into the spider's web!", "", 4178015902, 2202039151)
        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_aggro_gm_10fd87eb.mp3", "There is no escape for you now!", "", 3427660043, 2534456197)
        elseif choice == 5 then
        PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_aggro_gm_fe18133.mp3", "Look what strolled into the spider's web!", "", 1688336194, 2269151294)
        elseif choice == 6 or 7 then
        if GetClass(Spawn)>=1 and GetClass(Spawn)<=10 then--Fighter CHECK
        PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_maofighter_gm_c01f2ef8.mp3", "Let's see how good of a fighter you really are!", "", 976101228, 853372931)            
        else--Mage CHECK
        PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_maomage_gm_7c1c0586.mp3", "Your pathetic parlor tricks won't save you now, magician!", "", 2940784449, 2243650132)
        end
        end  
    else
 	local choice = MakeRandomInt(1,4)
 	    if choice == 1 then
 	    PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_aggro_gf_10fd87eb.mp3", "There is no escape for you now!", "", 3641868496, 1960514853)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_aggro_gf_fe18133.mp3", "Look what strolled into the spider's web!", "", 1570890577, 2869516555)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_aggro_gf_10fd87eb.mp3", "There is no escape for you now!", "", 3743520097, 2328340147)
        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_aggro_gf_fe18133.mp3", "Look what strolled into the spider's web!", "", 2639788240, 46489616)
        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_aggro_gf_fe18133.mp3", "Look what strolled into the spider's web!", "", 2332756549, 3562953667)
        end
       AddTimer(NPC,15000,"FifteenCall")
end    
end
   



function death(NPC,Spawn)
 --[[if CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,7000,"ResetTimer")]]--
    if GetGender(NPC)==1 then
 	local choice = MakeRandomInt(1,6)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_death_gm_25576197.mp3", "I will have vengeance!", "", 360053692, 4149753869)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_death_gm_8d7bb2b9.mp3", "Hold them and I'll return with help!", "", 2338278515, 1160150777)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_death_gm_25576197.mp3", "I will have vengeance!", "", 1315021503, 378441917)
        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_death_gm_8d7bb2b9.mp3", "Hold them and I'll return with help!", "", 4054713295, 2203944491)
        elseif choice == 5 then
        PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_death_gm_25576197.mp3", "I will have vengeance!", "", 433254383, 1749773166)
        elseif choice == 6 then
        PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_death_gm_8d7bb2b9.mp3", "Hold them and I'll return with help!", "", 1905250318, 2280015161)
        end  
    else
 	local choice = MakeRandomInt(1,6)
 	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_death_gf_25576197.mp3", "I will have vengeance!", "", 2208779791, 246336299)
        elseif choice == 2 then
 		PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_death_gf_8d7bb2b9.mp3", "Hold them and I'll return with help!", "", 2248940979, 3184577285)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_death_gf_25576197.mp3", "I will have vengeance!", "", 378367578, 835613312)
        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_death_gf_8d7bb2b9.mp3", "Hold them and I'll return with help!", "", 2832376323, 444359174)
        elseif choice == 5 then
        PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_death_gf_25576197.mp3", "I will have vengeance!", "", 58514974, 479667048, Spawn)
        elseif choice == 6 then
        PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_death_gf_8d7bb2b9.mp3", "Hold them and I'll return with help!", "", 291851398, 546843337)
        end
    end
    end
--end


function FifteenCall(NPC,Player)
if IsInCombat(NPC)==true and IsAlive(NPC) == true and math.random(0,100)<=33 then
--[[ if CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,7000,"ResetTimer")]]--
    if GetGender(NPC)==1 then
 	local choice = MakeRandomInt(1,6)
 	    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_battle_cm_4e66222a.mp3", "You cannot deny the power of hate!", "", 2308305258, 1715309735)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_battle_gm_316a6c63.mp3", "I crave your suffering!", "", 3367682978, 4121942691)
        elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_battle_gm_6806b443.mp3", "You are no match for the Teir'Dal!", "", 2992438842, 2162693039)
        elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_battle_gm_700b6151.mp3", "A feeble attempt from a worthless opponent.", "", 943969253, 2337029939)
        elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_battle_gm_a38dc90c.mp3", "Close in until they can't breathe!", "", 1646052354, 1989688436)
        elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_battle_mm_4832fde6.mp3", "Now, prepare to be eviscerated!", "", 1640233154, 431623172)
        end  
    else
     	local choice = MakeRandomInt(1,2)
 	    if choice == 1 then
 		PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_battle_gf_a38dc90c.mp3", "Close in until they can't breathe!", "", 2932951909, 3358869262)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_battle_gf_700b6151.mp3", "A feeble attempt from a worthless opponent.", "", 943969253, 2337029939, Spawn) --DOESN"T WORK (needs Key)
        end
    if IsAlive(NPC)then
    AddTimer(NPC,15000,"FifteenCall")
    end
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
		PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_halfhealth_gm_577ab333.mp3", "You'll pay for that one, peon!", "", 1420508530, 39058961)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_halfhealth_gm_9e244d19.mp3", "How dare you!", "", 3305445355, 1846155898)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_halfhealth_gf_9e244d19.mp3", "How dare you!", "", 2263865273, 2956956838)
        end
    else
	local choice = MakeRandomInt(1,5)
	    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_2_halfhealth_gf_9e244d19.mp3", "How dare you!", "", 2263865273, 2956956838)
        elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_halfhealth_gf_577ab333.mp3", "You'll pay for that one, peon!", "", 2534123849, 501758946)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_1_halfhealth_gf_9e244d19.mp3", "How dare you!", "", 2905660023, 2043697886)
        elseif choice == 4 then
        PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_halfhealth_gm_577ab333.mp3", "You'll pay for that one, peon!", "", 475204402, 2998439968)
        elseif choice == 5 then
        PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_1/ft/darkelf/darkelf_base_1_3_halfhealth_gm_9e244d19.mp3", "How dare you!", "", 2287743179, 1322949627)
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
		PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_victory_gm_dff26fa.mp3", "It is a shame we must end it this way ... I could have used you.", "", 1363661737, 942201815)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_victory_gm_f4fc7cf8.mp3", "Did you really think you had a chance?", "", 607143583, 3133144305)
        elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_victory_gm_f5088778.mp3", "Get up! Death isn't good enough for you!", "", 3381713633, 2145918189)
        end
    else
	local choice = MakeRandomInt(1,2)
	    if choice == 1 then --NO FEMALE Darkelf Victory VOs
		PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_victory_gm_dff26fa.mp3", "It is a shame we must end it this way ... I could have used you.", "", 1363661737, 942201815)
        elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_victory_gm_f4fc7cf8.mp3", "Did you really think you had a chance?", "", 607143583, 3133144305)
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